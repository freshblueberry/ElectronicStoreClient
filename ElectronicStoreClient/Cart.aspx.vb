
Imports System.Data
Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Net.Http
Imports System.Net.Http.Headers
Imports Newtonsoft.Json

Public Class Cart
    Inherits System.Web.UI.Page

    Dim httpClient As New HttpClient
    Public strCartID As String
    Dim url As String = "http://localhost:44338/api/cart/"

    Protected Async Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (HttpContext.Current.Request.Cookies("CartID") IsNot Nothing) Then
            Dim CookieBack As HttpCookie = HttpContext.Current.Request.Cookies("CartID")
            strCartID = CookieBack.Value
            Console.WriteLine("Test for fun")
            Console.WriteLine(strCartID)
        End If

        'gets current cartID'
        If strCartID IsNot Nothing Then
            Dim task = Await httpClient.GetAsync(url + strCartID)
            Dim jsonString As String = Await task.Content.ReadAsStringAsync()
            If task.IsSuccessStatusCode Then
                Dim table As DataTable = JsonConvert.DeserializeObject(Of DataTable)(jsonString)
                gvCurrentCart.DataSource = table
                gvCurrentCart.DataBind()
            End If
        End If

    End Sub
End Class