using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.Security.Cryptography;



namespace Dist_Cloud
{
    public class DecryptionClass
    {
        private SymmetricAlgorithm _algorithm = new RijndaelManaged();
        public DecryptionClass()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public byte[] decryptData(byte[] data, string SKey, string PKey)
        {
            data = MyDecrypt(data, "id");

            byte[] FKEY = UTF8Encoding.UTF8.GetBytes(SKey + PKey);

            byte[] result = new byte[data.Length - FKEY.Length];


            System.Buffer.BlockCopy(data, 0, result, 0, result.Length);

            return result;
        }

        public string decryptSkey(string Skey, string id, Boolean b)
        {
            byte[] keyArray;
            //get the byte code of the string

            byte[] toEncryptArray = Convert.FromBase64String(Skey);


            string key = id;

            if (b)
            {
                //if hashing was used get the hash code with regards to your key
                MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
                keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
                //release any resource held by the MD5CryptoServiceProvider

                hashmd5.Clear();
            }
            else
            {
                //if hashing was not implemented get the byte code of the key
                keyArray = UTF8Encoding.UTF8.GetBytes(key);
            }

            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
            //set the secret key for the tripleDES algorithm
            tdes.Key = keyArray;
            //mode of operation. there are other 4 modes. 
            //We choose ECB(Electronic code Book)

            tdes.Mode = CipherMode.ECB;
            //padding mode(if any extra byte added)
            tdes.Padding = PaddingMode.PKCS7;

            ICryptoTransform cTransform = tdes.CreateDecryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(
                                 toEncryptArray, 0, toEncryptArray.Length);
            //Release resources held by TripleDes Encryptor                
            tdes.Clear();
            //return the Clear decrypted TEXT
            return UTF8Encoding.UTF8.GetString(resultArray);
        }

        public string decryptPkey(string Pkey, string id, Boolean b)
        {
            byte[] keyArray;
            //get the byte code of the string

            byte[] toEncryptArray = Convert.FromBase64String(Pkey);


            string key = id;

            if (b)
            {
                //if hashing was used get the hash code with regards to your key
                MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
                keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
                //release any resource held by the MD5CryptoServiceProvider

                hashmd5.Clear();
            }
            else
            {
                //if hashing was not implemented get the byte code of the key
                keyArray = UTF8Encoding.UTF8.GetBytes(key);
            }

            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
            //set the secret key for the tripleDES algorithm
            tdes.Key = keyArray;
            //mode of operation. there are other 4 modes. 
            //We choose ECB(Electronic code Book)

            tdes.Mode = CipherMode.ECB;
            //padding mode(if any extra byte added)
            tdes.Padding = PaddingMode.PKCS7;

            ICryptoTransform cTransform = tdes.CreateDecryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(
                                 toEncryptArray, 0, toEncryptArray.Length);
            //Release resources held by TripleDes Encryptor                
            tdes.Clear();
            //return the Clear decrypted TEXT
            return UTF8Encoding.UTF8.GetString(resultArray);
        }
        public byte[] MyDecrypt(byte[] cipherText2, string skey)
        {

            StringBuilder sb = new StringBuilder();
            sb.Append(skey);


            StringBuilder _sbSalt = new StringBuilder();
            for (int i = 0; i < 8; i++)
            {
                _sbSalt.Append("," + sb.Length.ToString());
            }
            byte[] Salt = Encoding.ASCII.GetBytes(_sbSalt.ToString());


            Rfc2898DeriveBytes pwdGen = new Rfc2898DeriveBytes(sb.ToString(), Salt, 10000);


            RijndaelManaged _RijndaelManaged = new RijndaelManaged();
            _RijndaelManaged.BlockSize = 256;

            byte[] key = pwdGen.GetBytes(_RijndaelManaged.KeySize / 8);
            byte[] iv = pwdGen.GetBytes(_RijndaelManaged.BlockSize / 8);


            _RijndaelManaged.Key = key;
            _RijndaelManaged.IV = iv;


            byte[] plainText2 = null;
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, _RijndaelManaged.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherText2, 0, cipherText2.Length);
                }
                plainText2 = ms.ToArray();
            }

            return plainText2;
        }
    }

}