/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Font.swift">
 *   Copyright (c) 2026 Aspose.Words for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------
 */

import Foundation

// DTO container with a font element.
public class Font : LinkElement {
    // Gets or sets the locale independent style identifier of the character style applied to this formatting.
    public enum StyleIdentifier : String, Codable
    {
        // Enum value "normal"
        case normal = "Normal"

        // Enum value "heading1"
        case heading1 = "Heading1"

        // Enum value "heading2"
        case heading2 = "Heading2"

        // Enum value "heading3"
        case heading3 = "Heading3"

        // Enum value "heading4"
        case heading4 = "Heading4"

        // Enum value "heading5"
        case heading5 = "Heading5"

        // Enum value "heading6"
        case heading6 = "Heading6"

        // Enum value "heading7"
        case heading7 = "Heading7"

        // Enum value "heading8"
        case heading8 = "Heading8"

        // Enum value "heading9"
        case heading9 = "Heading9"

        // Enum value "index1"
        case index1 = "Index1"

        // Enum value "index2"
        case index2 = "Index2"

        // Enum value "index3"
        case index3 = "Index3"

        // Enum value "index4"
        case index4 = "Index4"

        // Enum value "index5"
        case index5 = "Index5"

        // Enum value "index6"
        case index6 = "Index6"

        // Enum value "index7"
        case index7 = "Index7"

        // Enum value "index8"
        case index8 = "Index8"

        // Enum value "index9"
        case index9 = "Index9"

        // Enum value "toc1"
        case toc1 = "Toc1"

        // Enum value "toc2"
        case toc2 = "Toc2"

        // Enum value "toc3"
        case toc3 = "Toc3"

        // Enum value "toc4"
        case toc4 = "Toc4"

        // Enum value "toc5"
        case toc5 = "Toc5"

        // Enum value "toc6"
        case toc6 = "Toc6"

        // Enum value "toc7"
        case toc7 = "Toc7"

        // Enum value "toc8"
        case toc8 = "Toc8"

        // Enum value "toc9"
        case toc9 = "Toc9"

        // Enum value "normalIndent"
        case normalIndent = "NormalIndent"

        // Enum value "footnoteText"
        case footnoteText = "FootnoteText"

        // Enum value "commentText"
        case commentText = "CommentText"

        // Enum value "header"
        case header = "Header"

        // Enum value "footer"
        case footer = "Footer"

        // Enum value "indexHeading"
        case indexHeading = "IndexHeading"

        // Enum value "caption"
        case caption = "Caption"

        // Enum value "tableOfFigures"
        case tableOfFigures = "TableOfFigures"

        // Enum value "envelopeAddress"
        case envelopeAddress = "EnvelopeAddress"

        // Enum value "envelopeReturn"
        case envelopeReturn = "EnvelopeReturn"

        // Enum value "footnoteReference"
        case footnoteReference = "FootnoteReference"

        // Enum value "commentReference"
        case commentReference = "CommentReference"

        // Enum value "lineNumber"
        case lineNumber = "LineNumber"

        // Enum value "pageNumber"
        case pageNumber = "PageNumber"

        // Enum value "endnoteReference"
        case endnoteReference = "EndnoteReference"

        // Enum value "endnoteText"
        case endnoteText = "EndnoteText"

        // Enum value "tableOfAuthorities"
        case tableOfAuthorities = "TableOfAuthorities"

        // Enum value "macro"
        case macro = "Macro"

        // Enum value "toaHeading"
        case toaHeading = "ToaHeading"

        // Enum value "list"
        case list = "List"

        // Enum value "listBullet"
        case listBullet = "ListBullet"

        // Enum value "listNumber"
        case listNumber = "ListNumber"

        // Enum value "list2"
        case list2 = "List2"

        // Enum value "list3"
        case list3 = "List3"

        // Enum value "list4"
        case list4 = "List4"

        // Enum value "list5"
        case list5 = "List5"

        // Enum value "listBullet2"
        case listBullet2 = "ListBullet2"

        // Enum value "listBullet3"
        case listBullet3 = "ListBullet3"

        // Enum value "listBullet4"
        case listBullet4 = "ListBullet4"

        // Enum value "listBullet5"
        case listBullet5 = "ListBullet5"

        // Enum value "listNumber2"
        case listNumber2 = "ListNumber2"

        // Enum value "listNumber3"
        case listNumber3 = "ListNumber3"

        // Enum value "listNumber4"
        case listNumber4 = "ListNumber4"

        // Enum value "listNumber5"
        case listNumber5 = "ListNumber5"

        // Enum value "title"
        case title = "Title"

        // Enum value "closing"
        case closing = "Closing"

        // Enum value "signature"
        case signature = "Signature"

        // Enum value "defaultParagraphFont"
        case defaultParagraphFont = "DefaultParagraphFont"

        // Enum value "bodyText"
        case bodyText = "BodyText"

        // Enum value "bodyTextInd"
        case bodyTextInd = "BodyTextInd"

        // Enum value "listContinue"
        case listContinue = "ListContinue"

        // Enum value "listContinue2"
        case listContinue2 = "ListContinue2"

        // Enum value "listContinue3"
        case listContinue3 = "ListContinue3"

        // Enum value "listContinue4"
        case listContinue4 = "ListContinue4"

        // Enum value "listContinue5"
        case listContinue5 = "ListContinue5"

        // Enum value "messageHeader"
        case messageHeader = "MessageHeader"

        // Enum value "subtitle"
        case subtitle = "Subtitle"

        // Enum value "salutation"
        case salutation = "Salutation"

        // Enum value "date"
        case date = "Date"

        // Enum value "bodyText1I"
        case bodyText1I = "BodyText1I"

        // Enum value "bodyText1I2"
        case bodyText1I2 = "BodyText1I2"

        // Enum value "noteHeading"
        case noteHeading = "NoteHeading"

        // Enum value "bodyText2"
        case bodyText2 = "BodyText2"

        // Enum value "bodyText3"
        case bodyText3 = "BodyText3"

        // Enum value "bodyTextInd2"
        case bodyTextInd2 = "BodyTextInd2"

        // Enum value "bodyTextInd3"
        case bodyTextInd3 = "BodyTextInd3"

        // Enum value "blockText"
        case blockText = "BlockText"

        // Enum value "hyperlink"
        case hyperlink = "Hyperlink"

        // Enum value "followedHyperlink"
        case followedHyperlink = "FollowedHyperlink"

        // Enum value "strong"
        case strong = "Strong"

        // Enum value "emphasis"
        case emphasis = "Emphasis"

        // Enum value "documentMap"
        case documentMap = "DocumentMap"

        // Enum value "plainText"
        case plainText = "PlainText"

        // Enum value "emailSignature"
        case emailSignature = "EmailSignature"

        // Enum value "htmlTopOfForm"
        case htmlTopOfForm = "HtmlTopOfForm"

        // Enum value "htmlBottomOfForm"
        case htmlBottomOfForm = "HtmlBottomOfForm"

        // Enum value "normalWeb"
        case normalWeb = "NormalWeb"

        // Enum value "htmlAcronym"
        case htmlAcronym = "HtmlAcronym"

        // Enum value "htmlAddress"
        case htmlAddress = "HtmlAddress"

        // Enum value "htmlCite"
        case htmlCite = "HtmlCite"

        // Enum value "htmlCode"
        case htmlCode = "HtmlCode"

        // Enum value "htmlDefinition"
        case htmlDefinition = "HtmlDefinition"

        // Enum value "htmlKeyboard"
        case htmlKeyboard = "HtmlKeyboard"

        // Enum value "htmlPreformatted"
        case htmlPreformatted = "HtmlPreformatted"

        // Enum value "htmlSample"
        case htmlSample = "HtmlSample"

        // Enum value "htmlTypewriter"
        case htmlTypewriter = "HtmlTypewriter"

        // Enum value "htmlVariable"
        case htmlVariable = "HtmlVariable"

        // Enum value "tableNormal"
        case tableNormal = "TableNormal"

        // Enum value "commentSubject"
        case commentSubject = "CommentSubject"

        // Enum value "noList"
        case noList = "NoList"

        // Enum value "outlineList1"
        case outlineList1 = "OutlineList1"

        // Enum value "outlineList2"
        case outlineList2 = "OutlineList2"

        // Enum value "outlineList3"
        case outlineList3 = "OutlineList3"

        // Enum value "tableSimple1"
        case tableSimple1 = "TableSimple1"

        // Enum value "tableSimple2"
        case tableSimple2 = "TableSimple2"

        // Enum value "tableSimple3"
        case tableSimple3 = "TableSimple3"

        // Enum value "tableClassic1"
        case tableClassic1 = "TableClassic1"

        // Enum value "tableClassic2"
        case tableClassic2 = "TableClassic2"

        // Enum value "tableClassic3"
        case tableClassic3 = "TableClassic3"

        // Enum value "tableClassic4"
        case tableClassic4 = "TableClassic4"

        // Enum value "tableColorful1"
        case tableColorful1 = "TableColorful1"

        // Enum value "tableColorful2"
        case tableColorful2 = "TableColorful2"

        // Enum value "tableColorful3"
        case tableColorful3 = "TableColorful3"

        // Enum value "tableColumns1"
        case tableColumns1 = "TableColumns1"

        // Enum value "tableColumns2"
        case tableColumns2 = "TableColumns2"

        // Enum value "tableColumns3"
        case tableColumns3 = "TableColumns3"

        // Enum value "tableColumns4"
        case tableColumns4 = "TableColumns4"

        // Enum value "tableColumns5"
        case tableColumns5 = "TableColumns5"

        // Enum value "tableGrid1"
        case tableGrid1 = "TableGrid1"

        // Enum value "tableGrid2"
        case tableGrid2 = "TableGrid2"

        // Enum value "tableGrid3"
        case tableGrid3 = "TableGrid3"

        // Enum value "tableGrid4"
        case tableGrid4 = "TableGrid4"

        // Enum value "tableGrid5"
        case tableGrid5 = "TableGrid5"

        // Enum value "tableGrid6"
        case tableGrid6 = "TableGrid6"

        // Enum value "tableGrid7"
        case tableGrid7 = "TableGrid7"

        // Enum value "tableGrid8"
        case tableGrid8 = "TableGrid8"

        // Enum value "tableList1"
        case tableList1 = "TableList1"

        // Enum value "tableList2"
        case tableList2 = "TableList2"

        // Enum value "tableList3"
        case tableList3 = "TableList3"

        // Enum value "tableList4"
        case tableList4 = "TableList4"

        // Enum value "tableList5"
        case tableList5 = "TableList5"

        // Enum value "tableList6"
        case tableList6 = "TableList6"

        // Enum value "tableList7"
        case tableList7 = "TableList7"

        // Enum value "tableList8"
        case tableList8 = "TableList8"

        // Enum value "table3DEffects1"
        case table3DEffects1 = "Table3DEffects1"

        // Enum value "table3DEffects2"
        case table3DEffects2 = "Table3DEffects2"

        // Enum value "table3DEffects3"
        case table3DEffects3 = "Table3DEffects3"

        // Enum value "tableContemporary"
        case tableContemporary = "TableContemporary"

        // Enum value "tableElegant"
        case tableElegant = "TableElegant"

        // Enum value "tableProfessional"
        case tableProfessional = "TableProfessional"

        // Enum value "tableSubtle1"
        case tableSubtle1 = "TableSubtle1"

        // Enum value "tableSubtle2"
        case tableSubtle2 = "TableSubtle2"

        // Enum value "tableWeb1"
        case tableWeb1 = "TableWeb1"

        // Enum value "tableWeb2"
        case tableWeb2 = "TableWeb2"

        // Enum value "tableWeb3"
        case tableWeb3 = "TableWeb3"

        // Enum value "balloonText"
        case balloonText = "BalloonText"

        // Enum value "tableGrid"
        case tableGrid = "TableGrid"

        // Enum value "tableTheme"
        case tableTheme = "TableTheme"

        // Enum value "placeholderText"
        case placeholderText = "PlaceholderText"

        // Enum value "noSpacing"
        case noSpacing = "NoSpacing"

        // Enum value "lightShading"
        case lightShading = "LightShading"

        // Enum value "lightList"
        case lightList = "LightList"

        // Enum value "lightGrid"
        case lightGrid = "LightGrid"

        // Enum value "mediumShading1"
        case mediumShading1 = "MediumShading1"

        // Enum value "mediumShading2"
        case mediumShading2 = "MediumShading2"

        // Enum value "mediumList1"
        case mediumList1 = "MediumList1"

        // Enum value "mediumList2"
        case mediumList2 = "MediumList2"

        // Enum value "mediumGrid1"
        case mediumGrid1 = "MediumGrid1"

        // Enum value "mediumGrid2"
        case mediumGrid2 = "MediumGrid2"

        // Enum value "mediumGrid3"
        case mediumGrid3 = "MediumGrid3"

        // Enum value "darkList"
        case darkList = "DarkList"

        // Enum value "colorfulShading"
        case colorfulShading = "ColorfulShading"

        // Enum value "colorfulList"
        case colorfulList = "ColorfulList"

        // Enum value "colorfulGrid"
        case colorfulGrid = "ColorfulGrid"

        // Enum value "lightShadingAccent1"
        case lightShadingAccent1 = "LightShadingAccent1"

        // Enum value "lightListAccent1"
        case lightListAccent1 = "LightListAccent1"

        // Enum value "lightGridAccent1"
        case lightGridAccent1 = "LightGridAccent1"

        // Enum value "mediumShading1Accent1"
        case mediumShading1Accent1 = "MediumShading1Accent1"

        // Enum value "mediumShading2Accent1"
        case mediumShading2Accent1 = "MediumShading2Accent1"

        // Enum value "mediumList1Accent1"
        case mediumList1Accent1 = "MediumList1Accent1"

        // Enum value "revision"
        case revision = "Revision"

        // Enum value "listParagraph"
        case listParagraph = "ListParagraph"

        // Enum value "quote"
        case quote = "Quote"

        // Enum value "intenseQuote"
        case intenseQuote = "IntenseQuote"

        // Enum value "mediumList2Accent1"
        case mediumList2Accent1 = "MediumList2Accent1"

        // Enum value "mediumGrid1Accent1"
        case mediumGrid1Accent1 = "MediumGrid1Accent1"

        // Enum value "mediumGrid2Accent1"
        case mediumGrid2Accent1 = "MediumGrid2Accent1"

        // Enum value "mediumGrid3Accent1"
        case mediumGrid3Accent1 = "MediumGrid3Accent1"

        // Enum value "darkListAccent1"
        case darkListAccent1 = "DarkListAccent1"

        // Enum value "colorfulShadingAccent1"
        case colorfulShadingAccent1 = "ColorfulShadingAccent1"

        // Enum value "colorfulListAccent1"
        case colorfulListAccent1 = "ColorfulListAccent1"

        // Enum value "colorfulGridAccent1"
        case colorfulGridAccent1 = "ColorfulGridAccent1"

        // Enum value "lightShadingAccent2"
        case lightShadingAccent2 = "LightShadingAccent2"

        // Enum value "lightListAccent2"
        case lightListAccent2 = "LightListAccent2"

        // Enum value "lightGridAccent2"
        case lightGridAccent2 = "LightGridAccent2"

        // Enum value "mediumShading1Accent2"
        case mediumShading1Accent2 = "MediumShading1Accent2"

        // Enum value "mediumShading2Accent2"
        case mediumShading2Accent2 = "MediumShading2Accent2"

        // Enum value "mediumList1Accent2"
        case mediumList1Accent2 = "MediumList1Accent2"

        // Enum value "mediumList2Accent2"
        case mediumList2Accent2 = "MediumList2Accent2"

        // Enum value "mediumGrid1Accent2"
        case mediumGrid1Accent2 = "MediumGrid1Accent2"

        // Enum value "mediumGrid2Accent2"
        case mediumGrid2Accent2 = "MediumGrid2Accent2"

        // Enum value "mediumGrid3Accent2"
        case mediumGrid3Accent2 = "MediumGrid3Accent2"

        // Enum value "darkListAccent2"
        case darkListAccent2 = "DarkListAccent2"

        // Enum value "colorfulShadingAccent2"
        case colorfulShadingAccent2 = "ColorfulShadingAccent2"

        // Enum value "colorfulListAccent2"
        case colorfulListAccent2 = "ColorfulListAccent2"

        // Enum value "colorfulGridAccent2"
        case colorfulGridAccent2 = "ColorfulGridAccent2"

        // Enum value "lightShadingAccent3"
        case lightShadingAccent3 = "LightShadingAccent3"

        // Enum value "lightListAccent3"
        case lightListAccent3 = "LightListAccent3"

        // Enum value "lightGridAccent3"
        case lightGridAccent3 = "LightGridAccent3"

        // Enum value "mediumShading1Accent3"
        case mediumShading1Accent3 = "MediumShading1Accent3"

        // Enum value "mediumShading2Accent3"
        case mediumShading2Accent3 = "MediumShading2Accent3"

        // Enum value "mediumList1Accent3"
        case mediumList1Accent3 = "MediumList1Accent3"

        // Enum value "mediumList2Accent3"
        case mediumList2Accent3 = "MediumList2Accent3"

        // Enum value "mediumGrid1Accent3"
        case mediumGrid1Accent3 = "MediumGrid1Accent3"

        // Enum value "mediumGrid2Accent3"
        case mediumGrid2Accent3 = "MediumGrid2Accent3"

        // Enum value "mediumGrid3Accent3"
        case mediumGrid3Accent3 = "MediumGrid3Accent3"

        // Enum value "darkListAccent3"
        case darkListAccent3 = "DarkListAccent3"

        // Enum value "colorfulShadingAccent3"
        case colorfulShadingAccent3 = "ColorfulShadingAccent3"

        // Enum value "colorfulListAccent3"
        case colorfulListAccent3 = "ColorfulListAccent3"

        // Enum value "colorfulGridAccent3"
        case colorfulGridAccent3 = "ColorfulGridAccent3"

        // Enum value "lightShadingAccent4"
        case lightShadingAccent4 = "LightShadingAccent4"

        // Enum value "lightListAccent4"
        case lightListAccent4 = "LightListAccent4"

        // Enum value "lightGridAccent4"
        case lightGridAccent4 = "LightGridAccent4"

        // Enum value "mediumShading1Accent4"
        case mediumShading1Accent4 = "MediumShading1Accent4"

        // Enum value "mediumShading2Accent4"
        case mediumShading2Accent4 = "MediumShading2Accent4"

        // Enum value "mediumList1Accent4"
        case mediumList1Accent4 = "MediumList1Accent4"

        // Enum value "mediumList2Accent4"
        case mediumList2Accent4 = "MediumList2Accent4"

        // Enum value "mediumGrid1Accent4"
        case mediumGrid1Accent4 = "MediumGrid1Accent4"

        // Enum value "mediumGrid2Accent4"
        case mediumGrid2Accent4 = "MediumGrid2Accent4"

        // Enum value "mediumGrid3Accent4"
        case mediumGrid3Accent4 = "MediumGrid3Accent4"

        // Enum value "darkListAccent4"
        case darkListAccent4 = "DarkListAccent4"

        // Enum value "colorfulShadingAccent4"
        case colorfulShadingAccent4 = "ColorfulShadingAccent4"

        // Enum value "colorfulListAccent4"
        case colorfulListAccent4 = "ColorfulListAccent4"

        // Enum value "colorfulGridAccent4"
        case colorfulGridAccent4 = "ColorfulGridAccent4"

        // Enum value "lightShadingAccent5"
        case lightShadingAccent5 = "LightShadingAccent5"

        // Enum value "lightListAccent5"
        case lightListAccent5 = "LightListAccent5"

        // Enum value "lightGridAccent5"
        case lightGridAccent5 = "LightGridAccent5"

        // Enum value "mediumShading1Accent5"
        case mediumShading1Accent5 = "MediumShading1Accent5"

        // Enum value "mediumShading2Accent5"
        case mediumShading2Accent5 = "MediumShading2Accent5"

        // Enum value "mediumList1Accent5"
        case mediumList1Accent5 = "MediumList1Accent5"

        // Enum value "mediumList2Accent5"
        case mediumList2Accent5 = "MediumList2Accent5"

        // Enum value "mediumGrid1Accent5"
        case mediumGrid1Accent5 = "MediumGrid1Accent5"

        // Enum value "mediumGrid2Accent5"
        case mediumGrid2Accent5 = "MediumGrid2Accent5"

        // Enum value "mediumGrid3Accent5"
        case mediumGrid3Accent5 = "MediumGrid3Accent5"

        // Enum value "darkListAccent5"
        case darkListAccent5 = "DarkListAccent5"

        // Enum value "colorfulShadingAccent5"
        case colorfulShadingAccent5 = "ColorfulShadingAccent5"

        // Enum value "colorfulListAccent5"
        case colorfulListAccent5 = "ColorfulListAccent5"

        // Enum value "colorfulGridAccent5"
        case colorfulGridAccent5 = "ColorfulGridAccent5"

        // Enum value "lightShadingAccent6"
        case lightShadingAccent6 = "LightShadingAccent6"

        // Enum value "lightListAccent6"
        case lightListAccent6 = "LightListAccent6"

        // Enum value "lightGridAccent6"
        case lightGridAccent6 = "LightGridAccent6"

        // Enum value "mediumShading1Accent6"
        case mediumShading1Accent6 = "MediumShading1Accent6"

        // Enum value "mediumShading2Accent6"
        case mediumShading2Accent6 = "MediumShading2Accent6"

        // Enum value "mediumList1Accent6"
        case mediumList1Accent6 = "MediumList1Accent6"

        // Enum value "mediumList2Accent6"
        case mediumList2Accent6 = "MediumList2Accent6"

        // Enum value "mediumGrid1Accent6"
        case mediumGrid1Accent6 = "MediumGrid1Accent6"

        // Enum value "mediumGrid2Accent6"
        case mediumGrid2Accent6 = "MediumGrid2Accent6"

        // Enum value "mediumGrid3Accent6"
        case mediumGrid3Accent6 = "MediumGrid3Accent6"

        // Enum value "darkListAccent6"
        case darkListAccent6 = "DarkListAccent6"

        // Enum value "colorfulShadingAccent6"
        case colorfulShadingAccent6 = "ColorfulShadingAccent6"

        // Enum value "colorfulListAccent6"
        case colorfulListAccent6 = "ColorfulListAccent6"

        // Enum value "colorfulGridAccent6"
        case colorfulGridAccent6 = "ColorfulGridAccent6"

        // Enum value "subtleEmphasis"
        case subtleEmphasis = "SubtleEmphasis"

        // Enum value "intenseEmphasis"
        case intenseEmphasis = "IntenseEmphasis"

        // Enum value "subtleReference"
        case subtleReference = "SubtleReference"

        // Enum value "intenseReference"
        case intenseReference = "IntenseReference"

        // Enum value "bookTitle"
        case bookTitle = "BookTitle"

        // Enum value "bibliography"
        case bibliography = "Bibliography"

        // Enum value "tocHeading"
        case tocHeading = "TocHeading"

        // Enum value "plainTable1"
        case plainTable1 = "PlainTable1"

        // Enum value "plainTable2"
        case plainTable2 = "PlainTable2"

        // Enum value "plainTable3"
        case plainTable3 = "PlainTable3"

        // Enum value "plainTable4"
        case plainTable4 = "PlainTable4"

        // Enum value "plainTable5"
        case plainTable5 = "PlainTable5"

        // Enum value "tableGridLight"
        case tableGridLight = "TableGridLight"

        // Enum value "gridTable1Light"
        case gridTable1Light = "GridTable1Light"

        // Enum value "gridTable2"
        case gridTable2 = "GridTable2"

        // Enum value "gridTable3"
        case gridTable3 = "GridTable3"

        // Enum value "gridTable4"
        case gridTable4 = "GridTable4"

        // Enum value "gridTable5Dark"
        case gridTable5Dark = "GridTable5Dark"

        // Enum value "gridTable6Colorful"
        case gridTable6Colorful = "GridTable6Colorful"

        // Enum value "gridTable7Colorful"
        case gridTable7Colorful = "GridTable7Colorful"

        // Enum value "gridTable1LightAccent1"
        case gridTable1LightAccent1 = "GridTable1LightAccent1"

        // Enum value "gridTable2Accent1"
        case gridTable2Accent1 = "GridTable2Accent1"

        // Enum value "gridTable3Accent1"
        case gridTable3Accent1 = "GridTable3Accent1"

        // Enum value "gridTable4Accent1"
        case gridTable4Accent1 = "GridTable4Accent1"

        // Enum value "gridTable5DarkAccent1"
        case gridTable5DarkAccent1 = "GridTable5DarkAccent1"

        // Enum value "gridTable6ColorfulAccent1"
        case gridTable6ColorfulAccent1 = "GridTable6ColorfulAccent1"

        // Enum value "gridTable7ColorfulAccent1"
        case gridTable7ColorfulAccent1 = "GridTable7ColorfulAccent1"

        // Enum value "gridTable1LightAccent2"
        case gridTable1LightAccent2 = "GridTable1LightAccent2"

        // Enum value "gridTable2Accent2"
        case gridTable2Accent2 = "GridTable2Accent2"

        // Enum value "gridTable3Accent2"
        case gridTable3Accent2 = "GridTable3Accent2"

        // Enum value "gridTable4Accent2"
        case gridTable4Accent2 = "GridTable4Accent2"

        // Enum value "gridTable5DarkAccent2"
        case gridTable5DarkAccent2 = "GridTable5DarkAccent2"

        // Enum value "gridTable6ColorfulAccent2"
        case gridTable6ColorfulAccent2 = "GridTable6ColorfulAccent2"

        // Enum value "gridTable7ColorfulAccent2"
        case gridTable7ColorfulAccent2 = "GridTable7ColorfulAccent2"

        // Enum value "gridTable1LightAccent3"
        case gridTable1LightAccent3 = "GridTable1LightAccent3"

        // Enum value "gridTable2Accent3"
        case gridTable2Accent3 = "GridTable2Accent3"

        // Enum value "gridTable3Accent3"
        case gridTable3Accent3 = "GridTable3Accent3"

        // Enum value "gridTable4Accent3"
        case gridTable4Accent3 = "GridTable4Accent3"

        // Enum value "gridTable5DarkAccent3"
        case gridTable5DarkAccent3 = "GridTable5DarkAccent3"

        // Enum value "gridTable6ColorfulAccent3"
        case gridTable6ColorfulAccent3 = "GridTable6ColorfulAccent3"

        // Enum value "gridTable7ColorfulAccent3"
        case gridTable7ColorfulAccent3 = "GridTable7ColorfulAccent3"

        // Enum value "gridTable1LightAccent4"
        case gridTable1LightAccent4 = "GridTable1LightAccent4"

        // Enum value "gridTable2Accent4"
        case gridTable2Accent4 = "GridTable2Accent4"

        // Enum value "gridTable3Accent4"
        case gridTable3Accent4 = "GridTable3Accent4"

        // Enum value "gridTable4Accent4"
        case gridTable4Accent4 = "GridTable4Accent4"

        // Enum value "gridTable5DarkAccent4"
        case gridTable5DarkAccent4 = "GridTable5DarkAccent4"

        // Enum value "gridTable6ColorfulAccent4"
        case gridTable6ColorfulAccent4 = "GridTable6ColorfulAccent4"

        // Enum value "gridTable7ColorfulAccent4"
        case gridTable7ColorfulAccent4 = "GridTable7ColorfulAccent4"

        // Enum value "gridTable1LightAccent5"
        case gridTable1LightAccent5 = "GridTable1LightAccent5"

        // Enum value "gridTable2Accent5"
        case gridTable2Accent5 = "GridTable2Accent5"

        // Enum value "gridTable3Accent5"
        case gridTable3Accent5 = "GridTable3Accent5"

        // Enum value "gridTable4Accent5"
        case gridTable4Accent5 = "GridTable4Accent5"

        // Enum value "gridTable5DarkAccent5"
        case gridTable5DarkAccent5 = "GridTable5DarkAccent5"

        // Enum value "gridTable6ColorfulAccent5"
        case gridTable6ColorfulAccent5 = "GridTable6ColorfulAccent5"

        // Enum value "gridTable7ColorfulAccent5"
        case gridTable7ColorfulAccent5 = "GridTable7ColorfulAccent5"

        // Enum value "gridTable1LightAccent6"
        case gridTable1LightAccent6 = "GridTable1LightAccent6"

        // Enum value "gridTable2Accent6"
        case gridTable2Accent6 = "GridTable2Accent6"

        // Enum value "gridTable3Accent6"
        case gridTable3Accent6 = "GridTable3Accent6"

        // Enum value "gridTable4Accent6"
        case gridTable4Accent6 = "GridTable4Accent6"

        // Enum value "gridTable5DarkAccent6"
        case gridTable5DarkAccent6 = "GridTable5DarkAccent6"

        // Enum value "gridTable6ColorfulAccent6"
        case gridTable6ColorfulAccent6 = "GridTable6ColorfulAccent6"

        // Enum value "gridTable7ColorfulAccent6"
        case gridTable7ColorfulAccent6 = "GridTable7ColorfulAccent6"

        // Enum value "listTable1Light"
        case listTable1Light = "ListTable1Light"

        // Enum value "listTable2"
        case listTable2 = "ListTable2"

        // Enum value "listTable3"
        case listTable3 = "ListTable3"

        // Enum value "listTable4"
        case listTable4 = "ListTable4"

        // Enum value "listTable5Dark"
        case listTable5Dark = "ListTable5Dark"

        // Enum value "listTable6Colorful"
        case listTable6Colorful = "ListTable6Colorful"

        // Enum value "listTable7Colorful"
        case listTable7Colorful = "ListTable7Colorful"

        // Enum value "listTable1LightAccent1"
        case listTable1LightAccent1 = "ListTable1LightAccent1"

        // Enum value "listTable2Accent1"
        case listTable2Accent1 = "ListTable2Accent1"

        // Enum value "listTable3Accent1"
        case listTable3Accent1 = "ListTable3Accent1"

        // Enum value "listTable4Accent1"
        case listTable4Accent1 = "ListTable4Accent1"

        // Enum value "listTable5DarkAccent1"
        case listTable5DarkAccent1 = "ListTable5DarkAccent1"

        // Enum value "listTable6ColorfulAccent1"
        case listTable6ColorfulAccent1 = "ListTable6ColorfulAccent1"

        // Enum value "listTable7ColorfulAccent1"
        case listTable7ColorfulAccent1 = "ListTable7ColorfulAccent1"

        // Enum value "listTable1LightAccent2"
        case listTable1LightAccent2 = "ListTable1LightAccent2"

        // Enum value "listTable2Accent2"
        case listTable2Accent2 = "ListTable2Accent2"

        // Enum value "listTable3Accent2"
        case listTable3Accent2 = "ListTable3Accent2"

        // Enum value "listTable4Accent2"
        case listTable4Accent2 = "ListTable4Accent2"

        // Enum value "listTable5DarkAccent2"
        case listTable5DarkAccent2 = "ListTable5DarkAccent2"

        // Enum value "listTable6ColorfulAccent2"
        case listTable6ColorfulAccent2 = "ListTable6ColorfulAccent2"

        // Enum value "listTable7ColorfulAccent2"
        case listTable7ColorfulAccent2 = "ListTable7ColorfulAccent2"

        // Enum value "listTable1LightAccent3"
        case listTable1LightAccent3 = "ListTable1LightAccent3"

        // Enum value "listTable2Accent3"
        case listTable2Accent3 = "ListTable2Accent3"

        // Enum value "listTable3Accent3"
        case listTable3Accent3 = "ListTable3Accent3"

        // Enum value "listTable4Accent3"
        case listTable4Accent3 = "ListTable4Accent3"

        // Enum value "listTable5DarkAccent3"
        case listTable5DarkAccent3 = "ListTable5DarkAccent3"

        // Enum value "listTable6ColorfulAccent3"
        case listTable6ColorfulAccent3 = "ListTable6ColorfulAccent3"

        // Enum value "listTable7ColorfulAccent3"
        case listTable7ColorfulAccent3 = "ListTable7ColorfulAccent3"

        // Enum value "listTable1LightAccent4"
        case listTable1LightAccent4 = "ListTable1LightAccent4"

        // Enum value "listTable2Accent4"
        case listTable2Accent4 = "ListTable2Accent4"

        // Enum value "listTable3Accent4"
        case listTable3Accent4 = "ListTable3Accent4"

        // Enum value "listTable4Accent4"
        case listTable4Accent4 = "ListTable4Accent4"

        // Enum value "listTable5DarkAccent4"
        case listTable5DarkAccent4 = "ListTable5DarkAccent4"

        // Enum value "listTable6ColorfulAccent4"
        case listTable6ColorfulAccent4 = "ListTable6ColorfulAccent4"

        // Enum value "listTable7ColorfulAccent4"
        case listTable7ColorfulAccent4 = "ListTable7ColorfulAccent4"

        // Enum value "listTable1LightAccent5"
        case listTable1LightAccent5 = "ListTable1LightAccent5"

        // Enum value "listTable2Accent5"
        case listTable2Accent5 = "ListTable2Accent5"

        // Enum value "listTable3Accent5"
        case listTable3Accent5 = "ListTable3Accent5"

        // Enum value "listTable4Accent5"
        case listTable4Accent5 = "ListTable4Accent5"

        // Enum value "listTable5DarkAccent5"
        case listTable5DarkAccent5 = "ListTable5DarkAccent5"

        // Enum value "listTable6ColorfulAccent5"
        case listTable6ColorfulAccent5 = "ListTable6ColorfulAccent5"

        // Enum value "listTable7ColorfulAccent5"
        case listTable7ColorfulAccent5 = "ListTable7ColorfulAccent5"

        // Enum value "listTable1LightAccent6"
        case listTable1LightAccent6 = "ListTable1LightAccent6"

        // Enum value "listTable2Accent6"
        case listTable2Accent6 = "ListTable2Accent6"

        // Enum value "listTable3Accent6"
        case listTable3Accent6 = "ListTable3Accent6"

        // Enum value "listTable4Accent6"
        case listTable4Accent6 = "ListTable4Accent6"

        // Enum value "listTable5DarkAccent6"
        case listTable5DarkAccent6 = "ListTable5DarkAccent6"

        // Enum value "listTable6ColorfulAccent6"
        case listTable6ColorfulAccent6 = "ListTable6ColorfulAccent6"

        // Enum value "listTable7ColorfulAccent6"
        case listTable7ColorfulAccent6 = "ListTable7ColorfulAccent6"

        // Enum value "smartLink"
        case smartLink = "SmartLink"

        // Enum value "mention"
        case mention = "Mention"

        // Enum value "smartHyperlink"
        case smartHyperlink = "SmartHyperlink"

        // Enum value "hashtag"
        case hashtag = "Hashtag"

        // Enum value "unresolvedMention"
        case unresolvedMention = "UnresolvedMention"

        // Enum value "user"
        case user = "User"

        // Enum value "_nil"
        case _nil = "Nil"
    }

    // Gets or sets the font animation effect.
    public enum TextEffect : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "lasVegasLights"
        case lasVegasLights = "LasVegasLights"

        // Enum value "blinkingBackground"
        case blinkingBackground = "BlinkingBackground"

        // Enum value "sparkleText"
        case sparkleText = "SparkleText"

        // Enum value "marchingBlackAnts"
        case marchingBlackAnts = "MarchingBlackAnts"

        // Enum value "marchingRedAnts"
        case marchingRedAnts = "MarchingRedAnts"

        // Enum value "shimmer"
        case shimmer = "Shimmer"
    }

    // Gets or sets the type of underline applied to the font.
    public enum Underline : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "single"
        case single = "Single"

        // Enum value "words"
        case words = "Words"

        // Enum value "double"
        case double = "Double"

        // Enum value "dotted"
        case dotted = "Dotted"

        // Enum value "thick"
        case thick = "Thick"

        // Enum value "dash"
        case dash = "Dash"

        // Enum value "dotDash"
        case dotDash = "DotDash"

        // Enum value "dotDotDash"
        case dotDotDash = "DotDotDash"

        // Enum value "wavy"
        case wavy = "Wavy"

        // Enum value "dottedHeavy"
        case dottedHeavy = "DottedHeavy"

        // Enum value "dashHeavy"
        case dashHeavy = "DashHeavy"

        // Enum value "dotDashHeavy"
        case dotDashHeavy = "DotDashHeavy"

        // Enum value "dotDotDashHeavy"
        case dotDotDashHeavy = "DotDotDashHeavy"

        // Enum value "wavyHeavy"
        case wavyHeavy = "WavyHeavy"

        // Enum value "dashLong"
        case dashLong = "DashLong"

        // Enum value "wavyDouble"
        case wavyDouble = "WavyDouble"

        // Enum value "dashLongHeavy"
        case dashLongHeavy = "DashLongHeavy"
    }

    // Field of allCaps. DTO container with a font element.
    private var _allCaps : Bool? = nil;

    public var allCaps : Bool? {
        get {
            return self._allCaps;
        }
        set {
            self._allCaps = newValue;
        }
    }

    // Field of bidi. DTO container with a font element.
    private var _bidi : Bool? = nil;

    public var bidi : Bool? {
        get {
            return self._bidi;
        }
        set {
            self._bidi = newValue;
        }
    }

    // Field of bold. DTO container with a font element.
    private var _bold : Bool? = nil;

    public var bold : Bool? {
        get {
            return self._bold;
        }
        set {
            self._bold = newValue;
        }
    }

    // Field of boldBi. DTO container with a font element.
    private var _boldBi : Bool? = nil;

    public var boldBi : Bool? {
        get {
            return self._boldBi;
        }
        set {
            self._boldBi = newValue;
        }
    }

    // Field of border. DTO container with a font element.
    private var _border : Border? = nil;

    public var border : Border? {
        get {
            return self._border;
        }
        set {
            self._border = newValue;
        }
    }

    // Field of color. DTO container with a font element.
    private var _color : XmlColor? = nil;

    public var color : XmlColor? {
        get {
            return self._color;
        }
        set {
            self._color = newValue;
        }
    }

    // Field of complexScript. DTO container with a font element.
    private var _complexScript : Bool? = nil;

    public var complexScript : Bool? {
        get {
            return self._complexScript;
        }
        set {
            self._complexScript = newValue;
        }
    }

    // Field of doubleStrikeThrough. DTO container with a font element.
    private var _doubleStrikeThrough : Bool? = nil;

    public var doubleStrikeThrough : Bool? {
        get {
            return self._doubleStrikeThrough;
        }
        set {
            self._doubleStrikeThrough = newValue;
        }
    }

    // Field of emboss. DTO container with a font element.
    private var _emboss : Bool? = nil;

    public var emboss : Bool? {
        get {
            return self._emboss;
        }
        set {
            self._emboss = newValue;
        }
    }

    // Field of engrave. DTO container with a font element.
    private var _engrave : Bool? = nil;

    public var engrave : Bool? {
        get {
            return self._engrave;
        }
        set {
            self._engrave = newValue;
        }
    }

    // Field of hidden. DTO container with a font element.
    private var _hidden : Bool? = nil;

    public var hidden : Bool? {
        get {
            return self._hidden;
        }
        set {
            self._hidden = newValue;
        }
    }

    // Field of highlightColor. DTO container with a font element.
    private var _highlightColor : XmlColor? = nil;

    public var highlightColor : XmlColor? {
        get {
            return self._highlightColor;
        }
        set {
            self._highlightColor = newValue;
        }
    }

    // Field of italic. DTO container with a font element.
    private var _italic : Bool? = nil;

    public var italic : Bool? {
        get {
            return self._italic;
        }
        set {
            self._italic = newValue;
        }
    }

    // Field of italicBi. DTO container with a font element.
    private var _italicBi : Bool? = nil;

    public var italicBi : Bool? {
        get {
            return self._italicBi;
        }
        set {
            self._italicBi = newValue;
        }
    }

    // Field of kerning. DTO container with a font element.
    private var _kerning : Double? = nil;

    public var kerning : Double? {
        get {
            return self._kerning;
        }
        set {
            self._kerning = newValue;
        }
    }

    // Field of localeId. DTO container with a font element.
    private var _localeId : Int? = nil;

    public var localeId : Int? {
        get {
            return self._localeId;
        }
        set {
            self._localeId = newValue;
        }
    }

    // Field of localeIdBi. DTO container with a font element.
    private var _localeIdBi : Int? = nil;

    public var localeIdBi : Int? {
        get {
            return self._localeIdBi;
        }
        set {
            self._localeIdBi = newValue;
        }
    }

    // Field of localeIdFarEast. DTO container with a font element.
    private var _localeIdFarEast : Int? = nil;

    public var localeIdFarEast : Int? {
        get {
            return self._localeIdFarEast;
        }
        set {
            self._localeIdFarEast = newValue;
        }
    }

    // Field of name. DTO container with a font element.
    private var _name : String? = nil;

    public var name : String? {
        get {
            return self._name;
        }
        set {
            self._name = newValue;
        }
    }

    // Field of nameAscii. DTO container with a font element.
    private var _nameAscii : String? = nil;

    public var nameAscii : String? {
        get {
            return self._nameAscii;
        }
        set {
            self._nameAscii = newValue;
        }
    }

    // Field of nameBi. DTO container with a font element.
    private var _nameBi : String? = nil;

    public var nameBi : String? {
        get {
            return self._nameBi;
        }
        set {
            self._nameBi = newValue;
        }
    }

    // Field of nameFarEast. DTO container with a font element.
    private var _nameFarEast : String? = nil;

    public var nameFarEast : String? {
        get {
            return self._nameFarEast;
        }
        set {
            self._nameFarEast = newValue;
        }
    }

    // Field of nameOther. DTO container with a font element.
    private var _nameOther : String? = nil;

    public var nameOther : String? {
        get {
            return self._nameOther;
        }
        set {
            self._nameOther = newValue;
        }
    }

    // Field of noProofing. DTO container with a font element.
    private var _noProofing : Bool? = nil;

    public var noProofing : Bool? {
        get {
            return self._noProofing;
        }
        set {
            self._noProofing = newValue;
        }
    }

    // Field of outline. DTO container with a font element.
    private var _outline : Bool? = nil;

    public var outline : Bool? {
        get {
            return self._outline;
        }
        set {
            self._outline = newValue;
        }
    }

    // Field of position. DTO container with a font element.
    private var _position : Double? = nil;

    public var position : Double? {
        get {
            return self._position;
        }
        set {
            self._position = newValue;
        }
    }

    // Field of scaling. DTO container with a font element.
    private var _scaling : Int? = nil;

    public var scaling : Int? {
        get {
            return self._scaling;
        }
        set {
            self._scaling = newValue;
        }
    }

    // Field of shadow. DTO container with a font element.
    private var _shadow : Bool? = nil;

    public var shadow : Bool? {
        get {
            return self._shadow;
        }
        set {
            self._shadow = newValue;
        }
    }

    // Field of size. DTO container with a font element.
    private var _size : Double? = nil;

    public var size : Double? {
        get {
            return self._size;
        }
        set {
            self._size = newValue;
        }
    }

    // Field of sizeBi. DTO container with a font element.
    private var _sizeBi : Double? = nil;

    public var sizeBi : Double? {
        get {
            return self._sizeBi;
        }
        set {
            self._sizeBi = newValue;
        }
    }

    // Field of smallCaps. DTO container with a font element.
    private var _smallCaps : Bool? = nil;

    public var smallCaps : Bool? {
        get {
            return self._smallCaps;
        }
        set {
            self._smallCaps = newValue;
        }
    }

    // Field of spacing. DTO container with a font element.
    private var _spacing : Double? = nil;

    public var spacing : Double? {
        get {
            return self._spacing;
        }
        set {
            self._spacing = newValue;
        }
    }

    // Field of strikeThrough. DTO container with a font element.
    private var _strikeThrough : Bool? = nil;

    public var strikeThrough : Bool? {
        get {
            return self._strikeThrough;
        }
        set {
            self._strikeThrough = newValue;
        }
    }

    // Field of styleIdentifier. DTO container with a font element.
    private var _styleIdentifier : StyleIdentifier? = nil;

    public var styleIdentifier : StyleIdentifier? {
        get {
            return self._styleIdentifier;
        }
        set {
            self._styleIdentifier = newValue;
        }
    }

    // Field of styleName. DTO container with a font element.
    private var _styleName : String? = nil;

    public var styleName : String? {
        get {
            return self._styleName;
        }
        set {
            self._styleName = newValue;
        }
    }

    // Field of _subscript. DTO container with a font element.
    private var __subscript : Bool? = nil;

    public var _subscript : Bool? {
        get {
            return self.__subscript;
        }
        set {
            self.__subscript = newValue;
        }
    }

    // Field of superscript. DTO container with a font element.
    private var _superscript : Bool? = nil;

    public var superscript : Bool? {
        get {
            return self._superscript;
        }
        set {
            self._superscript = newValue;
        }
    }

    // Field of textEffect. DTO container with a font element.
    private var _textEffect : TextEffect? = nil;

    public var textEffect : TextEffect? {
        get {
            return self._textEffect;
        }
        set {
            self._textEffect = newValue;
        }
    }

    // Field of underline. DTO container with a font element.
    private var _underline : Underline? = nil;

    public var underline : Underline? {
        get {
            return self._underline;
        }
        set {
            self._underline = newValue;
        }
    }

    // Field of underlineColor. DTO container with a font element.
    private var _underlineColor : XmlColor? = nil;

    public var underlineColor : XmlColor? {
        get {
            return self._underlineColor;
        }
        set {
            self._underlineColor = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case allCaps = "AllCaps";
        case bidi = "Bidi";
        case bold = "Bold";
        case boldBi = "BoldBi";
        case border = "Border";
        case color = "Color";
        case complexScript = "ComplexScript";
        case doubleStrikeThrough = "DoubleStrikeThrough";
        case emboss = "Emboss";
        case engrave = "Engrave";
        case hidden = "Hidden";
        case highlightColor = "HighlightColor";
        case italic = "Italic";
        case italicBi = "ItalicBi";
        case kerning = "Kerning";
        case localeId = "LocaleId";
        case localeIdBi = "LocaleIdBi";
        case localeIdFarEast = "LocaleIdFarEast";
        case name = "Name";
        case nameAscii = "NameAscii";
        case nameBi = "NameBi";
        case nameFarEast = "NameFarEast";
        case nameOther = "NameOther";
        case noProofing = "NoProofing";
        case outline = "Outline";
        case position = "Position";
        case scaling = "Scaling";
        case shadow = "Shadow";
        case size = "Size";
        case sizeBi = "SizeBi";
        case smallCaps = "SmallCaps";
        case spacing = "Spacing";
        case strikeThrough = "StrikeThrough";
        case styleIdentifier = "StyleIdentifier";
        case styleName = "StyleName";
        case _subscript = "Subscript";
        case superscript = "Superscript";
        case textEffect = "TextEffect";
        case underline = "Underline";
        case underlineColor = "UnderlineColor";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.allCaps = json["AllCaps"] as? Bool;
        self.bidi = json["Bidi"] as? Bool;
        self.bold = json["Bold"] as? Bool;
        self.boldBi = json["BoldBi"] as? Bool;
        if let raw_border = json["Border"] as? [String: Any] {
            self.border = try ObjectSerializer.deserialize(type: Border.self, from: raw_border);
        }

        if let raw_color = json["Color"] as? [String: Any] {
            self.color = try ObjectSerializer.deserialize(type: XmlColor.self, from: raw_color);
        }

        self.complexScript = json["ComplexScript"] as? Bool;
        self.doubleStrikeThrough = json["DoubleStrikeThrough"] as? Bool;
        self.emboss = json["Emboss"] as? Bool;
        self.engrave = json["Engrave"] as? Bool;
        self.hidden = json["Hidden"] as? Bool;
        if let raw_highlightColor = json["HighlightColor"] as? [String: Any] {
            self.highlightColor = try ObjectSerializer.deserialize(type: XmlColor.self, from: raw_highlightColor);
        }

        self.italic = json["Italic"] as? Bool;
        self.italicBi = json["ItalicBi"] as? Bool;
        self.kerning = json["Kerning"] as? Double;
        self.localeId = json["LocaleId"] as? Int;
        self.localeIdBi = json["LocaleIdBi"] as? Int;
        self.localeIdFarEast = json["LocaleIdFarEast"] as? Int;
        self.name = json["Name"] as? String;
        self.nameAscii = json["NameAscii"] as? String;
        self.nameBi = json["NameBi"] as? String;
        self.nameFarEast = json["NameFarEast"] as? String;
        self.nameOther = json["NameOther"] as? String;
        self.noProofing = json["NoProofing"] as? Bool;
        self.outline = json["Outline"] as? Bool;
        self.position = json["Position"] as? Double;
        self.scaling = json["Scaling"] as? Int;
        self.shadow = json["Shadow"] as? Bool;
        self.size = json["Size"] as? Double;
        self.sizeBi = json["SizeBi"] as? Double;
        self.smallCaps = json["SmallCaps"] as? Bool;
        self.spacing = json["Spacing"] as? Double;
        self.strikeThrough = json["StrikeThrough"] as? Bool;
        if let raw_styleIdentifier = json["StyleIdentifier"] as? String {
            self.styleIdentifier = StyleIdentifier(rawValue: raw_styleIdentifier);
        }

        self.styleName = json["StyleName"] as? String;
        self._subscript = json["Subscript"] as? Bool;
        self.superscript = json["Superscript"] as? Bool;
        if let raw_textEffect = json["TextEffect"] as? String {
            self.textEffect = TextEffect(rawValue: raw_textEffect);
        }

        if let raw_underline = json["Underline"] as? String {
            self.underline = Underline(rawValue: raw_underline);
        }

        if let raw_underlineColor = json["UnderlineColor"] as? [String: Any] {
            self.underlineColor = try ObjectSerializer.deserialize(type: XmlColor.self, from: raw_underlineColor);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.allCaps = try container.decodeIfPresent(Bool.self, forKey: .allCaps);
        self.bidi = try container.decodeIfPresent(Bool.self, forKey: .bidi);
        self.bold = try container.decodeIfPresent(Bool.self, forKey: .bold);
        self.boldBi = try container.decodeIfPresent(Bool.self, forKey: .boldBi);
        self.border = try container.decodeIfPresent(Border.self, forKey: .border);
        self.color = try container.decodeIfPresent(XmlColor.self, forKey: .color);
        self.complexScript = try container.decodeIfPresent(Bool.self, forKey: .complexScript);
        self.doubleStrikeThrough = try container.decodeIfPresent(Bool.self, forKey: .doubleStrikeThrough);
        self.emboss = try container.decodeIfPresent(Bool.self, forKey: .emboss);
        self.engrave = try container.decodeIfPresent(Bool.self, forKey: .engrave);
        self.hidden = try container.decodeIfPresent(Bool.self, forKey: .hidden);
        self.highlightColor = try container.decodeIfPresent(XmlColor.self, forKey: .highlightColor);
        self.italic = try container.decodeIfPresent(Bool.self, forKey: .italic);
        self.italicBi = try container.decodeIfPresent(Bool.self, forKey: .italicBi);
        self.kerning = try container.decodeIfPresent(Double.self, forKey: .kerning);
        self.localeId = try container.decodeIfPresent(Int.self, forKey: .localeId);
        self.localeIdBi = try container.decodeIfPresent(Int.self, forKey: .localeIdBi);
        self.localeIdFarEast = try container.decodeIfPresent(Int.self, forKey: .localeIdFarEast);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
        self.nameAscii = try container.decodeIfPresent(String.self, forKey: .nameAscii);
        self.nameBi = try container.decodeIfPresent(String.self, forKey: .nameBi);
        self.nameFarEast = try container.decodeIfPresent(String.self, forKey: .nameFarEast);
        self.nameOther = try container.decodeIfPresent(String.self, forKey: .nameOther);
        self.noProofing = try container.decodeIfPresent(Bool.self, forKey: .noProofing);
        self.outline = try container.decodeIfPresent(Bool.self, forKey: .outline);
        self.position = try container.decodeIfPresent(Double.self, forKey: .position);
        self.scaling = try container.decodeIfPresent(Int.self, forKey: .scaling);
        self.shadow = try container.decodeIfPresent(Bool.self, forKey: .shadow);
        self.size = try container.decodeIfPresent(Double.self, forKey: .size);
        self.sizeBi = try container.decodeIfPresent(Double.self, forKey: .sizeBi);
        self.smallCaps = try container.decodeIfPresent(Bool.self, forKey: .smallCaps);
        self.spacing = try container.decodeIfPresent(Double.self, forKey: .spacing);
        self.strikeThrough = try container.decodeIfPresent(Bool.self, forKey: .strikeThrough);
        self.styleIdentifier = try container.decodeIfPresent(StyleIdentifier.self, forKey: .styleIdentifier);
        self.styleName = try container.decodeIfPresent(String.self, forKey: .styleName);
        self._subscript = try container.decodeIfPresent(Bool.self, forKey: ._subscript);
        self.superscript = try container.decodeIfPresent(Bool.self, forKey: .superscript);
        self.textEffect = try container.decodeIfPresent(TextEffect.self, forKey: .textEffect);
        self.underline = try container.decodeIfPresent(Underline.self, forKey: .underline);
        self.underlineColor = try container.decodeIfPresent(XmlColor.self, forKey: .underlineColor);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.allCaps != nil) {
            try container.encode(self.allCaps, forKey: .allCaps);
        }
        if (self.bidi != nil) {
            try container.encode(self.bidi, forKey: .bidi);
        }
        if (self.bold != nil) {
            try container.encode(self.bold, forKey: .bold);
        }
        if (self.boldBi != nil) {
            try container.encode(self.boldBi, forKey: .boldBi);
        }
        if (self.border != nil) {
            try container.encode(self.border, forKey: .border);
        }
        if (self.color != nil) {
            try container.encode(self.color, forKey: .color);
        }
        if (self.complexScript != nil) {
            try container.encode(self.complexScript, forKey: .complexScript);
        }
        if (self.doubleStrikeThrough != nil) {
            try container.encode(self.doubleStrikeThrough, forKey: .doubleStrikeThrough);
        }
        if (self.emboss != nil) {
            try container.encode(self.emboss, forKey: .emboss);
        }
        if (self.engrave != nil) {
            try container.encode(self.engrave, forKey: .engrave);
        }
        if (self.hidden != nil) {
            try container.encode(self.hidden, forKey: .hidden);
        }
        if (self.highlightColor != nil) {
            try container.encode(self.highlightColor, forKey: .highlightColor);
        }
        if (self.italic != nil) {
            try container.encode(self.italic, forKey: .italic);
        }
        if (self.italicBi != nil) {
            try container.encode(self.italicBi, forKey: .italicBi);
        }
        if (self.kerning != nil) {
            try container.encode(self.kerning, forKey: .kerning);
        }
        if (self.localeId != nil) {
            try container.encode(self.localeId, forKey: .localeId);
        }
        if (self.localeIdBi != nil) {
            try container.encode(self.localeIdBi, forKey: .localeIdBi);
        }
        if (self.localeIdFarEast != nil) {
            try container.encode(self.localeIdFarEast, forKey: .localeIdFarEast);
        }
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
        if (self.nameAscii != nil) {
            try container.encode(self.nameAscii, forKey: .nameAscii);
        }
        if (self.nameBi != nil) {
            try container.encode(self.nameBi, forKey: .nameBi);
        }
        if (self.nameFarEast != nil) {
            try container.encode(self.nameFarEast, forKey: .nameFarEast);
        }
        if (self.nameOther != nil) {
            try container.encode(self.nameOther, forKey: .nameOther);
        }
        if (self.noProofing != nil) {
            try container.encode(self.noProofing, forKey: .noProofing);
        }
        if (self.outline != nil) {
            try container.encode(self.outline, forKey: .outline);
        }
        if (self.position != nil) {
            try container.encode(self.position, forKey: .position);
        }
        if (self.scaling != nil) {
            try container.encode(self.scaling, forKey: .scaling);
        }
        if (self.shadow != nil) {
            try container.encode(self.shadow, forKey: .shadow);
        }
        if (self.size != nil) {
            try container.encode(self.size, forKey: .size);
        }
        if (self.sizeBi != nil) {
            try container.encode(self.sizeBi, forKey: .sizeBi);
        }
        if (self.smallCaps != nil) {
            try container.encode(self.smallCaps, forKey: .smallCaps);
        }
        if (self.spacing != nil) {
            try container.encode(self.spacing, forKey: .spacing);
        }
        if (self.strikeThrough != nil) {
            try container.encode(self.strikeThrough, forKey: .strikeThrough);
        }
        if (self.styleIdentifier != nil) {
            try container.encode(self.styleIdentifier, forKey: .styleIdentifier);
        }
        if (self.styleName != nil) {
            try container.encode(self.styleName, forKey: .styleName);
        }
        if (self._subscript != nil) {
            try container.encode(self._subscript, forKey: ._subscript);
        }
        if (self.superscript != nil) {
            try container.encode(self.superscript, forKey: .superscript);
        }
        if (self.textEffect != nil) {
            try container.encode(self.textEffect, forKey: .textEffect);
        }
        if (self.underline != nil) {
            try container.encode(self.underline, forKey: .underline);
        }
        if (self.underlineColor != nil) {
            try container.encode(self.underlineColor, forKey: .underlineColor);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.border?.validate();
        try self.color?.validate();
        try self.highlightColor?.validate();
        try self.underlineColor?.validate();

    }

    // Sets allCaps. Gets or sets a value indicating whether the font is formatted as all capital letters.
    public func setAllCaps(allCaps : Bool?) -> Font {
        self.allCaps = allCaps;
        return self;
    }

    // Gets allCaps. Gets or sets a value indicating whether the font is formatted as all capital letters.
    public func getAllCaps() -> Bool? {
        return self.allCaps;
    }


    // Sets bidi. Gets or sets a value indicating whether the contents of this run shall have right-to-left characteristics. This property, when on, shall not be used with strongly left-to-right text. Any behavior under that condition is unspecified. This property, when off, shall not be used with strong right-to-left text. Any behavior under that condition is unspecified.When the contents of this run are displayed, all characters shall be treated as complex script characters for formatting purposes. This means that BoldBi, ItalicBi, SizeBi and a corresponding font name will be used when rendering this run.Also, when the contents of this run are displayed, this property acts as a right-to-left override for characters which are classified as "weak types" and "neutral types".
    public func setBidi(bidi : Bool?) -> Font {
        self.bidi = bidi;
        return self;
    }

    // Gets bidi. Gets or sets a value indicating whether the contents of this run shall have right-to-left characteristics. This property, when on, shall not be used with strongly left-to-right text. Any behavior under that condition is unspecified. This property, when off, shall not be used with strong right-to-left text. Any behavior under that condition is unspecified.When the contents of this run are displayed, all characters shall be treated as complex script characters for formatting purposes. This means that BoldBi, ItalicBi, SizeBi and a corresponding font name will be used when rendering this run.Also, when the contents of this run are displayed, this property acts as a right-to-left override for characters which are classified as "weak types" and "neutral types".
    public func getBidi() -> Bool? {
        return self.bidi;
    }


    // Sets bold. Gets or sets a value indicating whether the font is formatted as bold.
    public func setBold(bold : Bool?) -> Font {
        self.bold = bold;
        return self;
    }

    // Gets bold. Gets or sets a value indicating whether the font is formatted as bold.
    public func getBold() -> Bool? {
        return self.bold;
    }


    // Sets boldBi. Gets or sets a value indicating whether the right-to-left text is formatted as bold.
    public func setBoldBi(boldBi : Bool?) -> Font {
        self.boldBi = boldBi;
        return self;
    }

    // Gets boldBi. Gets or sets a value indicating whether the right-to-left text is formatted as bold.
    public func getBoldBi() -> Bool? {
        return self.boldBi;
    }


    // Sets border. Gets or sets the border object, that specifies border for the font.
    public func setBorder(border : Border?) -> Font {
        self.border = border;
        return self;
    }

    // Gets border. Gets or sets the border object, that specifies border for the font.
    public func getBorder() -> Border? {
        return self.border;
    }


    // Sets color. Gets or sets the color of the font.
    public func setColor(color : XmlColor?) -> Font {
        self.color = color;
        return self;
    }

    // Gets color. Gets or sets the color of the font.
    public func getColor() -> XmlColor? {
        return self.color;
    }


    // Sets complexScript. Gets or sets a value indicating whether the contents of this run shall be treated as complex script text regardless of their Unicode character values when determining the formatting for this run.
    public func setComplexScript(complexScript : Bool?) -> Font {
        self.complexScript = complexScript;
        return self;
    }

    // Gets complexScript. Gets or sets a value indicating whether the contents of this run shall be treated as complex script text regardless of their Unicode character values when determining the formatting for this run.
    public func getComplexScript() -> Bool? {
        return self.complexScript;
    }


    // Sets doubleStrikeThrough. Gets or sets a value indicating whether the font is formatted as double strikethrough text.
    public func setDoubleStrikeThrough(doubleStrikeThrough : Bool?) -> Font {
        self.doubleStrikeThrough = doubleStrikeThrough;
        return self;
    }

    // Gets doubleStrikeThrough. Gets or sets a value indicating whether the font is formatted as double strikethrough text.
    public func getDoubleStrikeThrough() -> Bool? {
        return self.doubleStrikeThrough;
    }


    // Sets emboss. Gets or sets a value indicating whether the font is formatted as embossed.
    public func setEmboss(emboss : Bool?) -> Font {
        self.emboss = emboss;
        return self;
    }

    // Gets emboss. Gets or sets a value indicating whether the font is formatted as embossed.
    public func getEmboss() -> Bool? {
        return self.emboss;
    }


    // Sets engrave. Gets or sets a value indicating whether the font is formatted as engraved.
    public func setEngrave(engrave : Bool?) -> Font {
        self.engrave = engrave;
        return self;
    }

    // Gets engrave. Gets or sets a value indicating whether the font is formatted as engraved.
    public func getEngrave() -> Bool? {
        return self.engrave;
    }


    // Sets hidden. Gets or sets a value indicating whether the font is formatted as hidden text.
    public func setHidden(hidden : Bool?) -> Font {
        self.hidden = hidden;
        return self;
    }

    // Gets hidden. Gets or sets a value indicating whether the font is formatted as hidden text.
    public func getHidden() -> Bool? {
        return self.hidden;
    }


    // Sets highlightColor. Gets or sets the highlight (marker) color.
    public func setHighlightColor(highlightColor : XmlColor?) -> Font {
        self.highlightColor = highlightColor;
        return self;
    }

    // Gets highlightColor. Gets or sets the highlight (marker) color.
    public func getHighlightColor() -> XmlColor? {
        return self.highlightColor;
    }


    // Sets italic. Gets or sets a value indicating whether the font is formatted as italic.
    public func setItalic(italic : Bool?) -> Font {
        self.italic = italic;
        return self;
    }

    // Gets italic. Gets or sets a value indicating whether the font is formatted as italic.
    public func getItalic() -> Bool? {
        return self.italic;
    }


    // Sets italicBi. Gets or sets a value indicating whether the right-to-left text is formatted as italic.
    public func setItalicBi(italicBi : Bool?) -> Font {
        self.italicBi = italicBi;
        return self;
    }

    // Gets italicBi. Gets or sets a value indicating whether the right-to-left text is formatted as italic.
    public func getItalicBi() -> Bool? {
        return self.italicBi;
    }


    // Sets kerning. Gets or sets the font size at which kerning starts.
    public func setKerning(kerning : Double?) -> Font {
        self.kerning = kerning;
        return self;
    }

    // Gets kerning. Gets or sets the font size at which kerning starts.
    public func getKerning() -> Double? {
        return self.kerning;
    }


    // Sets localeId. Gets or sets the locale identifier (language) of the formatted characters. For the list of locale identifiers see http://www.microsoft.com/globaldev/reference/lcid-all.mspx.
    public func setLocaleId(localeId : Int?) -> Font {
        self.localeId = localeId;
        return self;
    }

    // Gets localeId. Gets or sets the locale identifier (language) of the formatted characters. For the list of locale identifiers see http://www.microsoft.com/globaldev/reference/lcid-all.mspx.
    public func getLocaleId() -> Int? {
        return self.localeId;
    }


    // Sets localeIdBi. Gets or sets the locale identifier (language) of the formatted right-to-left characters. For the list of locale identifiers see http://www.microsoft.com/globaldev/reference/lcid-all.mspx.
    public func setLocaleIdBi(localeIdBi : Int?) -> Font {
        self.localeIdBi = localeIdBi;
        return self;
    }

    // Gets localeIdBi. Gets or sets the locale identifier (language) of the formatted right-to-left characters. For the list of locale identifiers see http://www.microsoft.com/globaldev/reference/lcid-all.mspx.
    public func getLocaleIdBi() -> Int? {
        return self.localeIdBi;
    }


    // Sets localeIdFarEast. Gets or sets the locale identifier (language) of the formatted Asian characters. For the list of locale identifiers see http://www.microsoft.com/globaldev/reference/lcid-all.mspx.
    public func setLocaleIdFarEast(localeIdFarEast : Int?) -> Font {
        self.localeIdFarEast = localeIdFarEast;
        return self;
    }

    // Gets localeIdFarEast. Gets or sets the locale identifier (language) of the formatted Asian characters. For the list of locale identifiers see http://www.microsoft.com/globaldev/reference/lcid-all.mspx.
    public func getLocaleIdFarEast() -> Int? {
        return self.localeIdFarEast;
    }


    // Sets name. Gets or sets the name of the font.
    public func setName(name : String?) -> Font {
        self.name = name;
        return self;
    }

    // Gets name. Gets or sets the name of the font.
    public func getName() -> String? {
        return self.name;
    }


    // Sets nameAscii. Gets or sets the font used for Latin text (characters with character codes from 0 (zero) through 127).
    public func setNameAscii(nameAscii : String?) -> Font {
        self.nameAscii = nameAscii;
        return self;
    }

    // Gets nameAscii. Gets or sets the font used for Latin text (characters with character codes from 0 (zero) through 127).
    public func getNameAscii() -> String? {
        return self.nameAscii;
    }


    // Sets nameBi. Gets or sets the name of the font in a right-to-left language document.
    public func setNameBi(nameBi : String?) -> Font {
        self.nameBi = nameBi;
        return self;
    }

    // Gets nameBi. Gets or sets the name of the font in a right-to-left language document.
    public func getNameBi() -> String? {
        return self.nameBi;
    }


    // Sets nameFarEast. Gets or sets the East Asian font name.
    public func setNameFarEast(nameFarEast : String?) -> Font {
        self.nameFarEast = nameFarEast;
        return self;
    }

    // Gets nameFarEast. Gets or sets the East Asian font name.
    public func getNameFarEast() -> String? {
        return self.nameFarEast;
    }


    // Sets nameOther. Gets or sets the font used for characters with character codes from 128 through 255.
    public func setNameOther(nameOther : String?) -> Font {
        self.nameOther = nameOther;
        return self;
    }

    // Gets nameOther. Gets or sets the font used for characters with character codes from 128 through 255.
    public func getNameOther() -> String? {
        return self.nameOther;
    }


    // Sets noProofing. Gets or sets a value indicating whether the formatted characters are not to be spell checked.
    public func setNoProofing(noProofing : Bool?) -> Font {
        self.noProofing = noProofing;
        return self;
    }

    // Gets noProofing. Gets or sets a value indicating whether the formatted characters are not to be spell checked.
    public func getNoProofing() -> Bool? {
        return self.noProofing;
    }


    // Sets outline. Gets or sets a value indicating whether the font is formatted as outline.
    public func setOutline(outline : Bool?) -> Font {
        self.outline = outline;
        return self;
    }

    // Gets outline. Gets or sets a value indicating whether the font is formatted as outline.
    public func getOutline() -> Bool? {
        return self.outline;
    }


    // Sets position. Gets or sets the position of text (in points) relative to the base line. A positive number raises the text, and a negative number lowers it.
    public func setPosition(position : Double?) -> Font {
        self.position = position;
        return self;
    }

    // Gets position. Gets or sets the position of text (in points) relative to the base line. A positive number raises the text, and a negative number lowers it.
    public func getPosition() -> Double? {
        return self.position;
    }


    // Sets scaling. Gets or sets character width scaling in percent.
    public func setScaling(scaling : Int?) -> Font {
        self.scaling = scaling;
        return self;
    }

    // Gets scaling. Gets or sets character width scaling in percent.
    public func getScaling() -> Int? {
        return self.scaling;
    }


    // Sets shadow. Gets or sets a value indicating whether the font is formatted as shadowed.
    public func setShadow(shadow : Bool?) -> Font {
        self.shadow = shadow;
        return self;
    }

    // Gets shadow. Gets or sets a value indicating whether the font is formatted as shadowed.
    public func getShadow() -> Bool? {
        return self.shadow;
    }


    // Sets size. Gets or sets the font size in points.
    public func setSize(size : Double?) -> Font {
        self.size = size;
        return self;
    }

    // Gets size. Gets or sets the font size in points.
    public func getSize() -> Double? {
        return self.size;
    }


    // Sets sizeBi. Gets or sets the font size in points used in a right-to-left document.
    public func setSizeBi(sizeBi : Double?) -> Font {
        self.sizeBi = sizeBi;
        return self;
    }

    // Gets sizeBi. Gets or sets the font size in points used in a right-to-left document.
    public func getSizeBi() -> Double? {
        return self.sizeBi;
    }


    // Sets smallCaps. Gets or sets a value indicating whether the font is formatted as small capital letters.
    public func setSmallCaps(smallCaps : Bool?) -> Font {
        self.smallCaps = smallCaps;
        return self;
    }

    // Gets smallCaps. Gets or sets a value indicating whether the font is formatted as small capital letters.
    public func getSmallCaps() -> Bool? {
        return self.smallCaps;
    }


    // Sets spacing. Gets or sets the spacing (in points) between characters.
    public func setSpacing(spacing : Double?) -> Font {
        self.spacing = spacing;
        return self;
    }

    // Gets spacing. Gets or sets the spacing (in points) between characters.
    public func getSpacing() -> Double? {
        return self.spacing;
    }


    // Sets strikeThrough. Gets or sets a value indicating whether the font is formatted as strikethrough text.
    public func setStrikeThrough(strikeThrough : Bool?) -> Font {
        self.strikeThrough = strikeThrough;
        return self;
    }

    // Gets strikeThrough. Gets or sets a value indicating whether the font is formatted as strikethrough text.
    public func getStrikeThrough() -> Bool? {
        return self.strikeThrough;
    }


    // Sets styleIdentifier. Gets or sets the locale independent style identifier of the character style applied to this formatting.
    public func setStyleIdentifier(styleIdentifier : StyleIdentifier?) -> Font {
        self.styleIdentifier = styleIdentifier;
        return self;
    }

    // Gets styleIdentifier. Gets or sets the locale independent style identifier of the character style applied to this formatting.
    public func getStyleIdentifier() -> StyleIdentifier? {
        return self.styleIdentifier;
    }


    // Sets styleName. Gets or sets the name of the character style applied to this formatting.
    public func setStyleName(styleName : String?) -> Font {
        self.styleName = styleName;
        return self;
    }

    // Gets styleName. Gets or sets the name of the character style applied to this formatting.
    public func getStyleName() -> String? {
        return self.styleName;
    }


    // Sets _subscript. Gets or sets a value indicating whether the font is formatted as subscript.
    public func setSubscript(_subscript : Bool?) -> Font {
        self._subscript = _subscript;
        return self;
    }

    // Gets _subscript. Gets or sets a value indicating whether the font is formatted as subscript.
    public func getSubscript() -> Bool? {
        return self._subscript;
    }


    // Sets superscript. Gets or sets a value indicating whether the font is formatted as superscript.
    public func setSuperscript(superscript : Bool?) -> Font {
        self.superscript = superscript;
        return self;
    }

    // Gets superscript. Gets or sets a value indicating whether the font is formatted as superscript.
    public func getSuperscript() -> Bool? {
        return self.superscript;
    }


    // Sets textEffect. Gets or sets the font animation effect.
    public func setTextEffect(textEffect : TextEffect?) -> Font {
        self.textEffect = textEffect;
        return self;
    }

    // Gets textEffect. Gets or sets the font animation effect.
    public func getTextEffect() -> TextEffect? {
        return self.textEffect;
    }


    // Sets underline. Gets or sets the type of underline applied to the font.
    public func setUnderline(underline : Underline?) -> Font {
        self.underline = underline;
        return self;
    }

    // Gets underline. Gets or sets the type of underline applied to the font.
    public func getUnderline() -> Underline? {
        return self.underline;
    }


    // Sets underlineColor. Gets or sets the color of the underline applied to the font.
    public func setUnderlineColor(underlineColor : XmlColor?) -> Font {
        self.underlineColor = underlineColor;
        return self;
    }

    // Gets underlineColor. Gets or sets the color of the underline applied to the font.
    public func getUnderlineColor() -> XmlColor? {
        return self.underlineColor;
    }
}
