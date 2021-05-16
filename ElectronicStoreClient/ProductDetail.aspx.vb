Imports System.Data
Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Net.Http
Imports System.Net.Http.Headers
Imports Newtonsoft.Json
Imports System.Configuration

Public Class ProductDetail
    Inherits System.Web.UI.Page

    Dim httpClient As New HttpClient
    Dim strCartID As String
    Dim url As String = "http://localhost:44338/api/product/"

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

    Protected Sub gvProduct_OnItemCommand(Source As Object, e As RepeaterCommandEventArgs) Handles gvProduct.ItemCommand
        If e.CommandName = "AddtoCart" Then
            Dim strCartNo As String
            If HttpContext.Current.Request.Cookies("CartNo") Is Nothing Then
                strCartNo = GetRandomCartNoUsingGUID(10)
                Dim CookieTo As New HttpCookie("CartNo", strCartNo)
                HttpContext.Current.Response.AppendCookie(CookieTo)
            Else
                Dim CookieBack As HttpCookie
                CookieBack = HttpContext.Current.Request.Cookies("CartNo")
                strCartNo = CookieBack.Value
            End If

            'send request to update cart'
        End If


    End Sub


    Public Function GetRandomCartNoUsingGUID(ByVal length As Integer) As String
        'Get the GUID
        Dim guidResult As String = System.Guid.NewGuid().ToString()
        'Remove the hyphens
        guidResult = guidResult.Replace("-", String.Empty)
        'Make sure length is valid
        If length <= 0 OrElse length > guidResult.Length Then
            Throw New ArgumentException("Length must be between 1 and " & guidResult.Length)
        End If
        'Return the first length bytes
        Return guidResult.Substring(0, length)
    End Function

End Class