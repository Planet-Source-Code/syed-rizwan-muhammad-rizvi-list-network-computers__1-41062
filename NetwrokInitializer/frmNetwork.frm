VERSION 5.00
Begin VB.Form frmNetwork 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List1 
      Height          =   2400
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   4215
   End
End
Attribute VB_Name = "frmNetwork"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Type NETRESOURCE
   dwScope As Long
   dwType As Long
   dwDisplayType As Long
   dwUsage As Long
   lpLocalName As Long
   lpRemoteName As Long
   lpComment As Long
   lpProvider As Long
End Type
Private Sub Form_activate()
Dim nt As NETRESOURCE
List1.Clear
nt.lpRemoteName = 0
modNetwork.DoNetEnum List1
End Sub
