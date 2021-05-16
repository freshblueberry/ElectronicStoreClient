

Public Class Site1
    Inherits System.Web.UI.MasterPage


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Defines which elements are visable when logged in or not'

        If getToken() <> Nothing Then
            userIsLoggedOut()
        End If

        If getToken() IsNot Nothing Then
            userIsLoggedIn()
        End If

    End Sub

    Private Sub btnApiLogout_Click(sender As Object, e As EventArgs) Handles btnApiLogout.Click
        If (Not Request.Cookies("JwtCookie") Is Nothing) Then
            Dim tokenCookie As HttpCookie
            tokenCookie = New HttpCookie("JwtCookie")
            tokenCookie.Expires = DateTime.Now.AddDays(-1D)
            Response.Cookies.Add(tokenCookie)
            userIsLoggedOut()
        End If
    End Sub

    Function userIsLoggedIn()
        hlToLogin.Visible = False
        hlToMyAccount.Visible = True
        btnApiLogout.Visible = True
        lblPanel.Visible = True
        lblPanel.Text = "PANEL"
        lblRegister.Visible = False
        lblRegister.Text = ""       'for some reason, this is required'
    End Function

    Function userIsLoggedOut()
        hlToLogin.Visible = True
        hlToMyAccount.Visible = False
        btnApiLogout.Visible = False
        lblPanel.Visible = False
        lblPanel.Text = ""   'for some reason, this is required'
        lblRegister.Visible = True
        lblRegister.Text = "REGISTER"
    End Function




    Function getToken() As String   'This will be important for getting/editing products and carts'
        Dim jwtToken As String
        If (Request.Cookies("JwtCookie") IsNot Nothing) Then
            If (Request.Cookies("JwtCookie")("JWT") IsNot Nothing) Then
                jwtToken = Request.Cookies("JwtCookie")("JWT")
                Return jwtToken
            End If
        End If
        Return Nothing
    End Function

End Class