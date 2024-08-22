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
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.Security.Cryptography;


namespace Dist_Cloud
{


    public class EncryptionClass
    {
        private SymmetricAlgorithm _algorithm = new RijndaelManaged();
        public EncryptionClass()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public byte[] encryptData(byte[] data, string SKey, string PKey)
        {
            byte[] FKEY = UTF8Encoding.UTF8.GetBytes(SKey + PKey);

            byte[] result = new byte[data.Length + FKEY.Length];



            System.Buffer.BlockCopy(data, 0, result, 0, data.Length);

            System.Buffer.BlockCopy(FKEY, 0, result, data.Length, FKEY.Length);

            byte[] fd = MyEncrypt(result, "id");

            return fd;

        }

        public string encryptSkey(string Skey, string id, Boolean b)
        {
            byte[] keyArray;
            byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(Skey);

            // System.Configuration.AppSettingsReader settingsReader = new AppSettingsReader();
            // Get the key from config file

            string key = id;
            //System.Windows.Forms.MessageBox.Show(key);
            //If hashing use get hashcode regards to your key
            if (b)
            {
                MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
                keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
                //Always release the resources and flush data
                // of the Cryptographic service provide. Best Practice

                hashmd5.Clear();
            }
            else
            {
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

            ICryptoTransform cTransform = tdes.CreateEncryptor();
            //transform the specified region of bytes array to resultArray
            byte[] resultArray =
              cTransform.TransformFinalBlock(toEncryptArray, 0,
              toEncryptArray.Length);
            //Release resources held by TripleDes Encryptor
            tdes.Clear();
            //Return the encrypted data into unreadable string format
            return Convert.ToBase64String(resultArray, 0, resultArray.Length);
        }

        public string encryptPkey(string Pkey, string id, Boolean b)
        {
            byte[] keyArray;
            byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(Pkey);

            // System.Configuration.AppSettingsReader settingsReader = new AppSettingsReader();
            // Get the key from config file

            string key = id;
            //System.Windows.Forms.MessageBox.Show(key);
            //If hashing use get hashcode regards to your key
            if (b)
            {
                MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
                keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
                //Always release the resources and flush data
                // of the Cryptographic service provide. Best Practice

                hashmd5.Clear();
            }
            else
            {
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

            ICryptoTransform cTransform = tdes.CreateEncryptor();
            //transform the specified region of bytes array to resultArray
            byte[] resultArray =
              cTransform.TransformFinalBlock(toEncryptArray, 0,
              toEncryptArray.Length);
            //Release resources held by TripleDes Encryptor
            tdes.Clear();
            //Return the encrypted data into unreadable string format
            return Convert.ToBase64String(resultArray, 0, resultArray.Length);
        }


        //----------------file-----------------

        public byte[] MyEncrypt(byte[] PlainText, string skey)
        {
            string fkey = skey;
            // byte[] PlainText = System.Text.Encoding.Unicode.GetBytes(strToBeEncrypted);


            StringBuilder sb = new StringBuilder();
            sb.Append(fkey);


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


            byte[] cipherText2 = null;
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, _RijndaelManaged.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(PlainText, 0, PlainText.Length);
                }
                cipherText2 = ms.ToArray();
            }
            return cipherText2;
        }

    }

}