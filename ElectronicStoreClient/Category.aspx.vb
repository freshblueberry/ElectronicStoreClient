Imports System.Data
Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Net.Http
Imports System.Net.Http.Headers
Imports Newtonsoft.Json

Public Class Category
    Inherits System.Web.UI.Page

    Dim httpClient As New HttpClient
    Dim strCartID As String


    Protected Async Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim uri As String = "http://localhost:44338/api/product"
        Dim task = Await httpClient.GetAsync(uri)
        Dim jsonString = Await task.Content.ReadAsStringAsync()
        If task.IsSuccessStatusCode Then
            Dim table As DataTable = JsonConvert.DeserializeObject(Of DataTable)(jsonString)
            gvAllProducts.DataSource = table
            gvAllProducts.DataBind()

            ' Use this for pointing to the specific data bind :'
            '   <%#: Eval("ProductName") %>     '
            '               ProductID'
            '               ProductNo'
            '               ProductName'
            '               ProductDescription'
            '               Price'
            '               SubCategoryID'
            '               Featured'
            '               MainCategoryID'


        End If
    End Sub

    'May need Review data from API  >>'
    'Review stars are displayed. If we want to enable that then we need the review Data, otherwise remove from HTML'

    'Add cart function. >> this should be a cookie data?'

End Class