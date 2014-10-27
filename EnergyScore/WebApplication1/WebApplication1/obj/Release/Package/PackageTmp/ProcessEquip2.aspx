<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProcessEquip2.aspx.cs" Inherits="QCA.ProcessEquip2" %>

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
                        GroupBoxCaptionOffsetY="-19px" HeaderText="工艺装备(二)" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
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
                                                    <td align="center">
                                                        <dx:ASPxLabel ID="ASPxLabel11" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="设备水平与节能降耗措施">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                     <td align="center" width="15%">
                                                        <dx:ASPxLabel ID="ASPxLabel14" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="基础分值">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                     <td align="center" width="15%">
                                                        <dx:ASPxLabel ID="ASPxLabel1" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="评分内容">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                    <td align="center" width="15%">
                                                        <dx:ASPxLabel ID="ASPxLabel13" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="专家系数">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                     <td align="center" width="15%">
                                                        <dx:ASPxLabel ID="ASPxLabel2" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="各项分值">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                     <td align="center" width="15%">
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
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="转炉" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent2" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_BF" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="工序设备大型化：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox1" ReadOnly="True" Text="1)转炉吨位：(120t)210～300t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con0" ReadOnly="True" Text="10.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con1" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con2" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con3" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con4" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox2" ReadOnly="True" 
                                                                                Text="2)冶炼周期：25～40 min">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con5" ReadOnly="True" Text="10.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con6" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con7" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con8" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con9" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox6" ReadOnly="True" Text="3)自动控制水平(静态模型,烟气分析,副枪,副枪＋烟气分析)">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con10" ReadOnly="True" Text="10.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con11" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con12" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con13" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con14" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="节能降耗措施：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox3" ReadOnly="True" Text="1)转炉干法除尘">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con15" ReadOnly="True" Text="10.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con16" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con17" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con18" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con19" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox4" ReadOnly="True" Text="2)转炉煤气回收利用(热值7000～8400kJ/m3,≥95 m3)">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con20" ReadOnly="True" Text="10.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                             <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con21" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con22" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con23" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con24" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox10" ReadOnly="True" Text="3)转炉蒸汽回收(45～93kg/t)">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con25" ReadOnly="True" Text="10.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con26" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con27" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con28" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con29" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox5" ReadOnly="True" Text="4)溅渣护炉">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con30" ReadOnly="True" Text="10.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con31" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con32" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con33" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con34" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox13" ReadOnly="True" Text="5)钢渣余热利用">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con35" ReadOnly="True" Text="10.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con36" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con37" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con38" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con39" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox17" ReadOnly="True" Text="6)钢包、转炉风机电机采用液力耦合器控制、变频技术">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con40" ReadOnly="True" Text="10.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con41" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con42" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con43" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con44" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox7" ReadOnly="True" Text="7)蓄热式烘烤">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con45" ReadOnly="True" Text="10.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con46" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con47" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con48" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con49" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox8" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox9" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox11" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox15" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox16" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
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
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="电炉" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_EAF" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel8" runat="server" Text="工序设备大型化：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox12" ReadOnly="True" Text="1)电炉吨位：75～100t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con50" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con51" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con52" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con53" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con54" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox19" ReadOnly="True" Text="2)冶炼周期：45～90min">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con55" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con56" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con57" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con58" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con59" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox25" ReadOnly="True" 
                                                                                Text="3)超高功率：(100t:1000～1200KVA，75t:600～100)">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con60" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con61" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con62" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con63" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con64" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel9" runat="server" Text="节能降耗措施：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox30" ReadOnly="True" Text="1)强化供氧技术">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con65" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con66" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con67" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con68" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con69" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox35" ReadOnly="True" Text="2)泡沫渣技术">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con70" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con71" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con72" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con73" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con74" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox40" ReadOnly="True" Text="3)氧燃烧嘴技术">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con75" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con76" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con77" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con78" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con79" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox52" ReadOnly="True" Text="4)偏心炉底出钢技术">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con80" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con81" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con82" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con83" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con84" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox45" ReadOnly="True" Text="5)吹底搅拌技术">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con85" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con86" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con87" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con88" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con89" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox50" ReadOnly="True" Text="6)电极智能控制技术">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con90" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con91" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con92" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con93" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con94" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="7)余热利用技术">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox60" ReadOnly="True" Text="a、化学余热再利用—二次燃烧">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con95" ReadOnly="True" Text="4.17">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con96" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con97" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con98" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con99" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox65" ReadOnly="True" Text="b、物理余热—废钢预热">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con100" ReadOnly="True" Text="4.17">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con101" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con102" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con103" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con104" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox70" ReadOnly="True" Text="8)直流电弧炉技术">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con105" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con106" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con107" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con108" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con109" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox75" ReadOnly="True" Text="9)蓄热式钢包烘烤">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con110" ReadOnly="True" Text="8.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con111" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con112" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con113" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con114" ReadOnly="True" Text="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox24" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox26" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox27" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox28" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
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
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="精炼" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent3" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_LF" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel18" runat="server" Text="工序设备大型化：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox29" ReadOnly="True" 
                                                                                Text="1)转炉车间">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con115" ReadOnly="True" Text="20.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con116" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con117" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con118" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con119" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox14" ReadOnly="True" 
                                                                                Text="2)电炉车间">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con120" ReadOnly="True" Text="20.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con121" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con122" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con123" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con124" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel19" runat="server" Text="节能降耗措施：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox36" ReadOnly="True" Text="1)节约合金消耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con125" ReadOnly="True" Text="20.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con126" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con127" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con128" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con129" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox42" ReadOnly="True" Text="2)完善除尘系统">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con130" ReadOnly="True" Text="20.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con131" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con132" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con133" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con134" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox48" ReadOnly="True" Text="3)LF 应采用管式全水冷钢包盖">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con135" ReadOnly="True" Text="20.00">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con136" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con137" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con138" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con139" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox31" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox32" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox33" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox34" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox37" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox3" ReadOnly="True" 
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
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel5" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="连铸" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent4" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Cast" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="节能降耗措施：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox47" ReadOnly="True" Text="1)采用多炉连浇，有利于降低中间罐烘烤用煤气量和罐衬消耗，减少了连铸准备时间">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con140" ReadOnly="True" Text="33.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con141" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con142" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con143" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con144" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox55" ReadOnly="True" Text="2)采用全连铸工艺">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con145" ReadOnly="True" Text="33.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con146" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con147" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con148" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con149" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox61" ReadOnly="True" Text="3)选用窄缝火焰切割机有利于减少切割损失，提高铸坯金属收得率">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con150" ReadOnly="True" Text="33.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con151" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con152" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con153" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con154" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox67" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox68" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox69" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox71" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox72" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
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
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="轧钢" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent5" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Roll" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="节能降耗措施：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel10" runat="server" Text="1)热装热送">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox18" ReadOnly="True" Text="a、对于大中型轧钢大于500℃，热装比大于50%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con155" ReadOnly="True" Text="5.56">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con156" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con157" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con158" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con159" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox39" ReadOnly="True" Text="b、小型线材大于600℃，热装比大于90%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con160" ReadOnly="True" Text="5.56">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con161" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con162" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con163" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con164" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox49" ReadOnly="True" Text="c、热轧板带大于500℃，热装比大于60%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con165" ReadOnly="True" Text="5.56">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con166" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con167" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con168" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con169" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel12" runat="server" Text="2)改进加热炉">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox66" ReadOnly="True" Text="a、无水冷滑轨技术">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con170" ReadOnly="True" Text="3.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con171" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con172" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con173" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con174" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox78" ReadOnly="True" Text="b、蓄热式加热炉">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con175" ReadOnly="True" Text="3.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con176" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con177" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con178" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con179" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox83" ReadOnly="True" Text="c、加热炉保温">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con180" ReadOnly="True" Text="3.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con181" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con182" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con183" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con184" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox88" ReadOnly="True" Text="d、加热炉汽化冷却">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con185" ReadOnly="True" Text="3.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con186" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con187" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con188" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con189" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox93" ReadOnly="True" Text="e、加热炉烟气余热回收利">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con190" ReadOnly="True" Text="3.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con191" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con192" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con193" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con194" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox98" ReadOnly="True" Text="3)薄板连铸连轧技术">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con195" ReadOnly="True" Text="16.67">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con196" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con197" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con198" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con199" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox103" ReadOnly="True" Text="4)低温轧制技术">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con200" ReadOnly="True" Text="16.67">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con201" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con202" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con203" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con204" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox108" ReadOnly="True" Text="5)降低电耗：生产效率、空转率、风机电机变频调速节电">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con205" ReadOnly="True" Text="16.67">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con206" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con207" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con208" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con209" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox113" ReadOnly="True" Text="6)轧钢蒸汽回收">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con210" ReadOnly="True" Text="16.67">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxComboBox ID="con211" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                ValueType="System.String" Width="120px" SelectedIndex="0">
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
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con212" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con213" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con214" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="220px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox57" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox58" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox59" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox62" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox63" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="15%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
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
