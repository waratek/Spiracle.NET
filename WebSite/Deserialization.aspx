<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Deserialization.aspx.cs" Inherits="WebSite.Deserialization" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Deserialization</h1>
        <div class="panel panel-default">

            <div class="panel-heading">
                Form tags for method attribute: post
            </div>


            <div class="panel-body">
                <form id="Deserializer" action="./Deserialization" method="post">

                    <label for="DeserializerApi">Deserialization API</label>
                    <select class="form-control" id="DeserializerApi" name="DeserializerApi">
                        <option value="">Select API</option>
                        <option value="XmlSerializer">XmlSerializer</option>
                        <option value="DataContractSerializer">DataContractSerializer</option>
                        <option value="BinaryFormatter">BinaryFormatter</option>
                        <option value="NetDataContractSerializer">NetDataContractSerializer</option>
                    </select>

                    <label for="InputData">Data to be deserialized</label>
                    <textarea class="form-control" id="InputData" name="InputData" style="min-width: 100%" rows="15"></textarea><br />

                    <input class="pull-right" type="submit" value="Submit">
                </form>

            </div>
        </div>

    </div>


</asp:Content>
