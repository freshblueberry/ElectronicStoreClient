Imports System.Data
Imports System.Net.Http
Imports Newtonsoft.Json
Imports System.Runtime.CompilerServices
Imports System.Net.Http.Headers
Imports System.Drawing
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions
Public Class Login
    Inherits System.Web.UI.Page
    Dim httpClient As New HttpClient
    Private sError As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Async Sub btnApiLogin_ClickAsync(sender As Object, e As EventArgs) Handles btnApiLogin.Click
        Dim myJson As String
        myJson = ("{'email': '" & tbEmail.Value & "', 'password': '" & tbPassword.Value & "'}")

        Dim uri As String = "http://localhost:44338/account/login" 'Needs to changed to http when done; currently testing'
        Dim task = Await httpClient.PostAsync(uri, New StringContent(myJson, Encoding.UTF8, "application/json"))
        Dim jwtToken As String
        If task.IsSuccessStatusCode Then
            jwtToken = Await task.Content.ReadAsStringAsync()
            lblLoginResult.Text = "Successful Login"
            lblLoginResult.ForeColor = Color.Green
            lblLoginResult.Visible = True
            loginDiv.Visible = False
            btnApiLogout.Visible = True

            Dim tokenCookie As New HttpCookie("JwtCookie")
            tokenCookie.HttpOnly = True
            'tokenCookie.Secure = True //use if HTTPS for added security. Current ApiClient page is HTTP only
            tokenCookie("JWT") = jwtToken
            tokenCookie.Expires = Now.AddHours(1)
            Response.Cookies.Add(tokenCookie)
        Else
            lblLoginResult.Text = "Failed Login"
            lblLoginResult.ForeColor = Color.Red
            lblLoginResult.Visible = True
        End If
    End Sub

End Class