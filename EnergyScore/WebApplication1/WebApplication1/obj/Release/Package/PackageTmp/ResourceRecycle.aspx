<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResourceRecycle.aspx.cs" Inherits="QCA.ResourceRecycle" %>

<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxUploadControl" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <table style="width: 900px;">
            <tr>
                <td valign="top">
                    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                        CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                        GroupBoxCaptionOffsetY="-19px" HeaderText="资源循环利用" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                        Width="100%" Height="593px" Style="margin-right: 0px">
                        <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                        <HeaderStyle>
                            <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                        </HeaderStyle>
                        <PanelCollection>
                            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                <table style="width: 100%;">
                                    <tr>
                                        <td width="100%" valign="top">
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td align="center" width="28%">
                                                        <dx:ASPxLabel ID="ASPxLabel11" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="项目内容">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                     <td align="center" width="16%">
                                                        <dx:ASPxLabel ID="ASPxLabel14" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="基础分值">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                     <td align="center" width="17%">
                                                        <dx:ASPxLabel ID="ASPxLabel1" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="评分内容">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                     <td align="center" width="18%">
                                                        <dx:ASPxLabel ID="ASPxLabel2" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="各项分值">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                     <td align="center">
                                                        <dx:ASPxLabel ID="ASPxLabel15" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="总分">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="焦化" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Scorch" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel8" runat="server" Text="固体废弃物回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox25" ReadOnly="True" 
                                                                                Text="1)沥青渣">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con0" ReadOnly="True" Text="4.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con1" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con2" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con3" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox1" ReadOnly="True" 
                                                                                Text="2)焦油渣">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con4" ReadOnly="True" Text="4.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con5" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con6" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con7" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox5" ReadOnly="True" 
                                                                                Text="3)酸焦油">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con8" ReadOnly="True" Text="4.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con9" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con10" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con11" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox9" ReadOnly="True" 
                                                                                Text="4)煤尘">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con12" ReadOnly="True" Text="4.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con13" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con14" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con15" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox13" ReadOnly="True" 
                                                                                Text="5)污泥">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con16" ReadOnly="True" Text="4.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con17" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con18" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con19" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="废气回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox2" ReadOnly="True" 
                                                                                Text="1)NH3、H2S、CmHn、SO2、NOx、CO等">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con20" ReadOnly="True" Text="20.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con21" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con22" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con23" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="废水回收(零排放)：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox7" ReadOnly="True" 
                                                                                Text="1)含有较高浓度的CODcr、酚、氰化物、氨氮、油类等污染物">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con24" ReadOnly="True" Text="20.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con25" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con26" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con27" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="能源回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox12" ReadOnly="True" 
                                                                                Text="1)吨焦余热回收量(折蒸汽)">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con28" ReadOnly="True" Text="10.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con29" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con30" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con31" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox17" ReadOnly="True" 
                                                                                Text="2)煤调湿吨焦节能量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con32" ReadOnly="True" Text="10.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con33" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con34" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con35" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="消纳社会废弃物：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox22" ReadOnly="True" 
                                                                                Text="1)废旧塑料">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con36" ReadOnly="True" Text="20.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con37" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con38" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con39" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox21" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox24" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox26" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox28" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox1" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="烧结" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent2" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Cake" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="固体废弃物回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox3" ReadOnly="True" 
                                                                                Text="1)粉尘回收利用率，%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con40" ReadOnly="True" Text="33.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con41" Text="0">
                                                                               <MaskSettings Mask="&lt;0..100&gt;" ShowHints="True" />
                                                                               <ValidationSettings Display="None">
                                                                               </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con42" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con43" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel9" runat="server" Text="能源回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox35" ReadOnly="True" 
                                                                                Text="1)吨烧结矿余热回收量(折蒸汽)">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con44" ReadOnly="True" Text="33.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con45" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con46" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con47" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel10" runat="server" Text="废气排放量：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox39" ReadOnly="True" 
                                                                                Text="1)烟气含尘浓度，g/m3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con48" ReadOnly="True" Text="33.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con49" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.35" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.7" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤1.2" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con50" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con51" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox11" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox14" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox16" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox18" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox2" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel4" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="球团" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent3" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Pellets" runat="server" UpdateMode="Conditional"
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel12" runat="server" Text="固体废弃物回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox4" ReadOnly="True" Text="1)除尘灰">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con52" ReadOnly="True" Text="33.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con53" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con54" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con55" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel13" runat="server" Text="废气回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox19" ReadOnly="True" Text="1)SOx">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con56" ReadOnly="True" Text="33.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con57" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con58" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con59" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel16" runat="server" Text="消纳社会废弃物：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox29" ReadOnly="True" Text="1)氧化铁皮等">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con60" ReadOnly="True" Text="33.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con61" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con62" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con63" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox33" ReadOnly="True" Text="合计" BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox34" BackColor="Yellow" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox36" ReadOnly="True" BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox37" ReadOnly="True" BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox3" ReadOnly="True" BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel5" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="高炉" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent4" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Blast" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel17" runat="server" Text="固体废弃物回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox6" ReadOnly="True" 
                                                                                Text="1)高炉渣回收利用率，%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con64" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con65" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≥97.0" />
                                                                                    <dx:ListEditItem Selected="True" Text="100" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con66" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con67" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox46" ReadOnly="True" 
                                                                                Text="2)粉尘浓度，g/m3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con68" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con69" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.10" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.20" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.30" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con70" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con71" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox50" ReadOnly="True" 
                                                                                Text="3)高炉瓦斯灰泥回收利用率，%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con72" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con73" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≥99.0" />
                                                                                    <dx:ListEditItem Selected="True" Text="100" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con74" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con75" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel18" runat="server" Text="废气排放量：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox20" ReadOnly="True" 
                                                                                Text="1)SOx，g/m3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con76" ReadOnly="True" Text="25.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con77" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.01" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.02" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.05" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con78" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con79" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel20" runat="server" Text="能源回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox55" ReadOnly="True" 
                                                                                Text="1)吨铁TRT发电量(湿法除尘),kwh">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con80" ReadOnly="True" Text="25.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con81" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≥40" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con82" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con83" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox63" ReadOnly="True" 
                                                                                Text="2)吨铁TRT发电量（干法除尘）,kwh">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con84" ReadOnly="True" Text="25.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con85" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≥40" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con86" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con87" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel19" runat="server" Text="消纳社会废弃物：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox31" ReadOnly="True" 
                                                                                Text="1)废旧塑料">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con88" ReadOnly="True" Text="12.50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con89" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con90" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con91" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox54" ReadOnly="True" 
                                                                                Text="2)废弃耐火材料">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con92" ReadOnly="True" Text="12.50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con93" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con94" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con95" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox41" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox42" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox43" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox44" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox4" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel6" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="转炉" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent5" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_BF" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel21" runat="server" Text="固体废弃物回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox8" ReadOnly="True" 
                                                                                Text="1)钢渣利用率，%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con96" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con97" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≥90" />
                                                                                    <dx:ListEditItem Selected="True" Text="≥95" />
                                                                                    <dx:ListEditItem Selected="True" Text="100" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con98" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con99" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox27" ReadOnly="True" 
                                                                                Text="2)尘泥回收利用率，%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con100" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con101" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="0" />
                                                                                    <dx:ListEditItem Selected="True" Text="100" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con102" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con103" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox40" ReadOnly="True" 
                                                                                Text="3)耐火材料">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con104" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con105" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con106" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con107" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox49" ReadOnly="True" 
                                                                                Text="4)石油类排放量，g/m3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con108" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con109" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.008" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.015" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.030" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con110" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con111" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel22" runat="server" Text="能源回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox56" ReadOnly="True" Text="1)吨钢余热回收量(折蒸汽)">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con112" ReadOnly="True" Text="33.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con113" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con114" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con115" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel23" runat="server" Text="废气排放量：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox60" ReadOnly="True" 
                                                                                Text="1)烟粉尘排放量，g/m3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con116" ReadOnly="True" Text="16.67">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con117" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.06" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.09" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.18" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con118" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con119" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox65" ReadOnly="True" 
                                                                                Text="2)COD，g/m3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con120" ReadOnly="True" Text="16.67">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con121" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.150" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.225" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.750" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con122" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con123" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox73" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox74" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox75" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox76" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox5" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel7" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="电炉" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent6" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_EAF" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel24" runat="server" Text="固体废弃物回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox10" ReadOnly="True" 
                                                                                Text="1)钢渣利用率，%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con124" ReadOnly="True" Text="12.50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con125" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≥90" />
                                                                                    <dx:ListEditItem Selected="True" Text="≥95" />
                                                                                    <dx:ListEditItem Selected="True" Text="100" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con126" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con127" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox32" ReadOnly="True" 
                                                                                Text="2)尘泥回收利用率，%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con128" ReadOnly="True" Text="12.50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con129" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="0" />
                                                                                    <dx:ListEditItem Selected="True" Text="100" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con130" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con131" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox53" ReadOnly="True" 
                                                                                Text="3)耐火材料">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con132" ReadOnly="True" Text="12.50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con133" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con134" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con135" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox61" ReadOnly="True" 
                                                                                Text="4)石油类排放量，g/m3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con136" ReadOnly="True" Text="12.50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con137" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.006" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.012" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.024" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con138" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con139" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel26" runat="server" Text="废气回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox71" ReadOnly="True" 
                                                                                Text="1)炉尘，g/m3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con140" ReadOnly="True" Text="25.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con141" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.4" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.5" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.6" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con142" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con143" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox79" ReadOnly="True" 
                                                                                Text="2)COD，g/m3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con144" ReadOnly="True" Text="25.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con145" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.120" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.180" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.600" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con146" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con147" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox83" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox84" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox85" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox86" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox6" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel8" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="精炼" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent7" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_LF" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel25" runat="server" Text="固体废弃物回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox15" ReadOnly="True" 
                                                                                Text="固体废弃物回收">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con148" ReadOnly="True" Text="100.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con149" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con150" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con151" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox68" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox69" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox70" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox72" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox7" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel9" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="连铸" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent8" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Cast" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel27" runat="server" Text="固体废弃物回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox23" ReadOnly="True" 
                                                                                Text="1)氧化铁皮">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con152" ReadOnly="True" Text="12.50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con153" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con154" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con155" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox64" ReadOnly="True" 
                                                                                Text="2)耐火材料">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con156" ReadOnly="True" Text="12.50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con157" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con158" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con159" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox78" ReadOnly="True" 
                                                                                Text="3)废钢">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con160" ReadOnly="True" Text="12.50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con161" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con162" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con163" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox87" ReadOnly="True" 
                                                                                Text="4)油">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con164" ReadOnly="True" Text="12.50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con165" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con166" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con167" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel28" runat="server" Text="废气回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox91" ReadOnly="True" 
                                                                                Text="1)SOx">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con168" ReadOnly="True" Text="25.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con169" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con170" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con171" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox95" ReadOnly="True" 
                                                                                Text="2)NOx">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con172" ReadOnly="True" Text="25.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con173" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con174" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con175" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox52" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox57" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox58" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox59" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox8" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel10" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="热轧" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent9" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Hot" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel29" runat="server" Text="固体废弃物回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox30" ReadOnly="True" 
                                                                                Text="1)废钢，%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con176" ReadOnly="True" Text="12.50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con177" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≥95" />
                                                                                    <dx:ListEditItem Selected="True" Text="100" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con178" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con179" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox66" ReadOnly="True" 
                                                                                Text="2)氧化铁皮，%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con180" ReadOnly="True" Text="12.50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con181" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≥90" />
                                                                                    <dx:ListEditItem Selected="True" Text="≥95" />
                                                                                    <dx:ListEditItem Selected="True" Text="100" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con182" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con183" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox81" ReadOnly="True" 
                                                                                Text="3)油，g/m3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con184" ReadOnly="True" Text="12.50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con185" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.005" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.010" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.050" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con186" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con187" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox90" ReadOnly="True" 
                                                                                Text="4)粉尘，g/m3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con188" ReadOnly="True" Text="12.50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con189" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.005" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.010" />
                                                                                    <dx:ListEditItem Selected="True" Text="≤0.050" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con190" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con191" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel30" runat="server" Text="能源回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox96" ReadOnly="True" 
                                                                                Text="1)余热回收">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con192" ReadOnly="True" Text="50.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con193" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con194" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con195" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox104" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox105" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox106" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox107" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox9" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel11" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="冷轧" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent10" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Cold" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel31" runat="server" Text="固体废弃物回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox38" ReadOnly="True" 
                                                                                Text="1)废钢">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con196" ReadOnly="True" Text="11.11">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con197" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con198" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con199" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox77" ReadOnly="True" 
                                                                                Text="2)油">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con200" ReadOnly="True" Text="11.11">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con201" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con202" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con203" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox89" ReadOnly="True" 
                                                                                Text="3)酸再生污泥">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con204" ReadOnly="True" Text="11.11">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con205" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                   <dx:ListEditItem Selected="True" Text="有" />
                                                                                   <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con206" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con207" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel32" runat="server" Text="废气回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox101" ReadOnly="True" 
                                                                                Text="1)SO2">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con208" ReadOnly="True" Text="11.11">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con209" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con210" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con211" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox97" ReadOnly="True" 
                                                                                Text="2)NOx">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con212" ReadOnly="True" Text="11.11">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con213" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con214" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con215" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox114" ReadOnly="True" 
                                                                                Text="3)CO">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con216" ReadOnly="True" Text="11.11">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con217" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con218" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con219" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel33" runat="server" Text="废水回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox118" ReadOnly="True" 
                                                                                Text="1)废液">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con220" ReadOnly="True" Text="33.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                           <dx:ASPxComboBox ID="con221" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con222" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con223" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox109" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox110" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox111" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox112" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox10" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel12" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="镀层" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent11" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Coat" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel34" runat="server" Text="固体废弃物回收：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox51" ReadOnly="True" Text="1)废钢">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con224" ReadOnly="True" Text="33.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con225" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con226" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con227" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox98" ReadOnly="True" Text="2)油">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con228" ReadOnly="True" Text="33.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con229" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con230" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con231" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox103" ReadOnly="True" Text="3)酸再生污泥">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con232" ReadOnly="True" Text="33.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxComboBox ID="con233" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="133px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                    <dx:ListEditItem Selected="True" Text="无" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con234" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con235" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox82" ReadOnly="True" Text="合计" BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox88" BackColor="Yellow" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox92" ReadOnly="True" BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox93" ReadOnly="True" BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="20%">
                                                                            <dx:ASPxTextBox runat="server" Width="133px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox11" ReadOnly="True" BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="top">
                                            <asp:UpdatePanel ID="UpdatePanel_Confirm" runat="server" UpdateMode="Conditional"
                                                ChildrenAsTriggers="False">
                                                <ContentTemplate>
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 25%;">
                                                                &nbsp;
                                                            </td>
                                                            <td style="width: 25%;" align="center">
                                                                <dx:ASPxButton ID="ASPxButton_Update" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                    CssPostfix="Office2010Blue" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                    Style="margin-left: 0px" Text="更新计算" Width="90px" OnClick="ASPxButton_Update_Click">
                                                                </dx:ASPxButton>
                                                            </td>
                                                            <td style="width: 25%;" align="center">
                                                                <dx:ASPxButton ID="ASPxButton_Confirm" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                    CssPostfix="Office2010Blue" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                    Style="margin-left: 0px" Text="保存" Width="90px" OnClick="ASPxButton_Confirm_Click">
                                                                </dx:ASPxButton>
                                                            </td>
                                                            <td style="width: 25%;">
                                                                &nbsp;
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </td>
                                    </tr>
                                </table>
                            </dx:PanelContent>
                        </PanelCollection>
                    </dx:ASPxRoundPanel>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
