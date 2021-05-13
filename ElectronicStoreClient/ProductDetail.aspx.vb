Imports System.Data
Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Net.Http
Imports System.Net.Http.Headers
Imports Newtonsoft.Json

Public Class ProductDetail
    Inherits System.Web.UI.Page

    Dim httpClient As New HttpClient
    Dim strCartID As String
    Dim url As String = "https://localhost:44338/api/product/"

    Protected Async Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("ProductID") <> "" Then
            Dim productnumber = Request.QueryString("ProductID")
            Dim task = Await httpClient.GetAsync(url + productnumber)
            Dim jsonString = Await task.Content.ReadAsStringAsync()
            If task.IsSuccessStatusCode Then
                Dim table As DataTable = JsonConvert.DeserializeObject(Of DataTable)(jsonString)
                gvProduct.DataSource = table
                gvProduct.DataBind()
            End If
        End If

    End Sub

End Class