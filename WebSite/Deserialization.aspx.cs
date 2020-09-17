using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Serialization;

namespace WebSite
{
    public partial class Deserialization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form.AllKeys.Contains("DeserializerApi"))
            {
                object o = null;
                var inputData = Request.Form["InputData"];

                switch (Request.Form["DeserializerApi"])
                {
                    case "XmlSerializer":
                    {
                        o = DeserializeXmlSerializer(inputData);
                        break;
                    }
                    case "DataContractSerializer":
                    {
                        o = DeserializeDataContractSerializer(inputData);
                        break;
                    }
                    case "BinaryFormatter":
                    {
                        o = DeserializeBinaryFormatter(inputData);
                        break;
                    }
                    case "NetDataContractSerializer":
                    {
                        o = DeserializeNetDataContractSerializer(inputData);
                        break;
                    }
                }

                Response.Write("Olaa");
            }
        }

        private object DeserializeBinaryFormatter(string inputData)
        {
            byte[] bytes = Convert.FromBase64String(inputData);

            using (MemoryStream stream = new MemoryStream(bytes))
            {
                return new BinaryFormatter().Deserialize(stream);
            }
        }

        private object DeserializeDataContractSerializer(string inputData)
        {
            var xmlDoc = new XmlDocument();

            xmlDoc.LoadXml(inputData);

            foreach (XmlElement xmlItem in xmlDoc.SelectNodes("/root"))
            {
                string typeName = xmlItem.GetAttribute("type");
                var xser2 = new DataContractSerializer(Type.GetType(typeName));

                var reader = new XmlTextReader(new StringReader(xmlItem.InnerXml));
                return xser2.ReadObject(reader);
            }

            return null;
        }

        private object DeserializeXmlSerializer(string inputData)
        {
            var xmlDoc = new XmlDocument();

            xmlDoc.LoadXml(inputData);

            foreach (XmlElement xmlItem in xmlDoc.SelectNodes("/root"))
            {
                string typeName = xmlItem.GetAttribute("type");
                var xser = new XmlSerializer(Type.GetType(typeName));

                var reader = new XmlTextReader(new StringReader(xmlItem.InnerXml));
                return xser.Deserialize(reader);
            }

            return null;
        }

        private object DeserializeNetDataContractSerializer(string input)
        {
            byte[] bytes = Encoding.ASCII.GetBytes(input);
            MemoryStream ms = new MemoryStream(bytes);

            XmlDictionaryReader reader = XmlDictionaryReader.CreateTextReader(ms, new XmlDictionaryReaderQuotas());
            NetDataContractSerializer ser = new NetDataContractSerializer();

            // Deserialize the data and read it from the instance.
            var deserializedPerson = ser.ReadObject(reader, true);
            ms.Close();
            return null;
        }
    }
}