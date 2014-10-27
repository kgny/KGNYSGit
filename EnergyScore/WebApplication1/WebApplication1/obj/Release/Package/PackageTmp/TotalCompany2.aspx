<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TotalCompany2.aspx.cs" Inherits="QCA.TotalCompany2" %>

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
                        GroupBoxCaptionOffsetY="-19px" HeaderText="全厂指标" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
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
                                                    <td align="center" width="17%">
                                                        <dx:ASPxLabel ID="ASPxLabel11" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="项目内容">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                    <td align="center" width="16%">
                                                        <dx:ASPxLabel ID="ASPxLabel12" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="单位">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                    <td align="center" width="17%">
                                                        <dx:ASPxLabel ID="ASPxLabel13" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="基准值">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                    <td align="center" width="16%">
                                                        <dx:ASPxLabel ID="ASPxLabel14" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="各项分值">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                    <td align="center" width="16%">
                                                        <dx:ASPxLabel ID="ASPxLabel1" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="评价内容">
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
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="全厂管理体系" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox8" ReadOnly="True" Text="环境管理机构">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox1" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox2" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox1" ReadOnly="True" Text="5.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxComboBox ID="con0" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0" >
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="否" />
                                                                                    <dx:ListEditItem Selected="True" Text="有" Value="" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip">
                                                                                    <RegularExpression ValidationExpression="^[\u4E00-\u9FFF]+$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con1" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox3" ReadOnly="True" Text="环境管理制度">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox4" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox5" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox2" ReadOnly="True" Text="5.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxComboBox ID="con2" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="否" />
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con3" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox10" ReadOnly="True" Text="能源管理机构">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox11" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox12" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox3" ReadOnly="True" Text="5.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxComboBox ID="con4" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="否" />
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con5" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox15" ReadOnly="True" Text="能源管理制度">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox16" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox17" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox4" ReadOnly="True" Text="5.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxComboBox ID="con6" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
                                                                                <Items>
                                                                                    <dx:ListEditItem Selected="True" Text="否" />
                                                                                    <dx:ListEditItem Selected="True" Text="有" />
                                                                                </Items>
                                                                                <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                                                </LoadingPanelImage>
                                                                                <LoadingPanelStyle ImageSpacing="5px">
                                                                                </LoadingPanelStyle>
                                                                                <ButtonStyle Width="13px">
                                                                                </ButtonStyle>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con7" ReadOnly="True" Text="0">
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
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="全厂指标" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent2" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox6" ReadOnly="True" Text="可比能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox7" ReadOnly="True" Text="kgce/t钢">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox9" ReadOnly="True" Text="650~700">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox5" ReadOnly="True" Text="6.15">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con8" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con9" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox14" ReadOnly="True" Text="工业用水循环利用率">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox18" ReadOnly="True" Text="%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox19" ReadOnly="True" Text="97.8">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox6" ReadOnly="True" Text="6.15">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con10" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con11" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox20" ReadOnly="True" Text="焦炉煤气回收利用率">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox21" ReadOnly="True" Text="%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox22" ReadOnly="True" Text="95">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox7" ReadOnly="True" Text="2.05">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con12" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con13" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox23" ReadOnly="True" Text="高炉煤气回收利用率">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox24" ReadOnly="True" Text="%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox25" ReadOnly="True" Text="95">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox8" ReadOnly="True" Text="2.05">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con14" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con15" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox29" ReadOnly="True" Text="转炉煤气回收利用率">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox30" ReadOnly="True" Text="%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox31" ReadOnly="True" Text="95">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox9" ReadOnly="True" Text="2.05">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con16" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con17" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox35" ReadOnly="True" Text="余热利用量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox36" ReadOnly="True" Text="kgce/t钢">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox37" ReadOnly="True" Text="31">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox10" ReadOnly="True" Text="6.15">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con18" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con19" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox41" ReadOnly="True" Text="吨钢耗用新水量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox42" ReadOnly="True" Text="t/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox43" ReadOnly="True" Text="3~6">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox11" ReadOnly="True" Text="6.15">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con20" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con21" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox47" ReadOnly="True" Text="吨钢烟粉尘排放量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox48" ReadOnly="True" Text="kg/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox49" ReadOnly="True" Text="0.5~1.3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox12" ReadOnly="True" Text="6.15">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con22" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con23" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox53" ReadOnly="True" Text="吨钢二氧化碳排放量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox54" ReadOnly="True" Text="t/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox55" ReadOnly="True" Text="1.5~1.9">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox13" ReadOnly="True" Text="6.15">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con24" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con25" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox59" ReadOnly="True" Text="吨钢二氧化硫排放量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox60" ReadOnly="True" Text="kg/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox61" ReadOnly="True" Text="0.5~1">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox14" ReadOnly="True" Text="6.15">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con26" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con27" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox65" ReadOnly="True" Text="吨钢COD排放量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox66" ReadOnly="True" Text="kg/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox67" ReadOnly="True" Text="0.05~0.2">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox15" ReadOnly="True" Text="6.15">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con28" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con29" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox71" ReadOnly="True" Text="吨钢NOX排放量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox72" ReadOnly="True" Text="kg/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox73" ReadOnly="True" Text="0.5~1.11">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox16" ReadOnly="True" Text="6.15">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con30" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con31" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox77" ReadOnly="True" Text="吨钢外放废水量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox78" ReadOnly="True" Text="t/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox79" ReadOnly="True" Text="0.5～3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox17" ReadOnly="True" Text="6.15">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con32" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con33" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox83" ReadOnly="True" Text="吨钢占地面积">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox84" ReadOnly="True" Text="m2/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox85" ReadOnly="True" Text="0.7～2 ">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox18" ReadOnly="True" Text="6.15">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con34" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con35" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox89" ReadOnly="True" Text="废钢系数">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox90" ReadOnly="True" Text="%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox91" ReadOnly="True" Text="5～42.7">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="tbox19" ReadOnly="True" Text="6.15">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="17%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con36" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con37" ReadOnly="True" Text="0">
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
