/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Style.swift">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

// DTO container with a single document style.
public class Style : LinkElement {
    // Gets or sets the style type (paragraph or character).
    public enum ModelType : String, Codable
    {
        // Enum value "paragraph"
        case paragraph = "Paragraph"

        // Enum value "character"
        case character = "Character"

        // Enum value "table"
        case table = "Table"

        // Enum value "list"
        case list = "List"
    }

    // Gets or sets the locale independent style identifier for a built-in style.
    // For user defined (custom) styles, this property returns Aspose.Words.StyleIdentifier.User.
    // Aspose.Words.Style.Name.
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

    // Field of font. DTO container with a single document style.
    private var _font : Font? = nil;

    public var font : Font? {
        get {
            return self._font;
        }
        set {
            self._font = newValue;
        }
    }

    // Field of builtIn. DTO container with a single document style.
    private var _builtIn : Bool? = nil;

    public var builtIn : Bool? {
        get {
            return self._builtIn;
        }
        set {
            self._builtIn = newValue;
        }
    }

    // Field of nextParagraphStyleName. DTO container with a single document style.
    private var _nextParagraphStyleName : String? = nil;

    public var nextParagraphStyleName : String? {
        get {
            return self._nextParagraphStyleName;
        }
        set {
            self._nextParagraphStyleName = newValue;
        }
    }

    // Field of baseStyleName. DTO container with a single document style.
    private var _baseStyleName : String? = nil;

    public var baseStyleName : String? {
        get {
            return self._baseStyleName;
        }
        set {
            self._baseStyleName = newValue;
        }
    }

    // Field of isQuickStyle. DTO container with a single document style.
    private var _isQuickStyle : Bool? = nil;

    public var isQuickStyle : Bool? {
        get {
            return self._isQuickStyle;
        }
        set {
            self._isQuickStyle = newValue;
        }
    }

    // Field of linkedStyleName. DTO container with a single document style.
    private var _linkedStyleName : String? = nil;

    public var linkedStyleName : String? {
        get {
            return self._linkedStyleName;
        }
        set {
            self._linkedStyleName = newValue;
        }
    }

    // Field of type. DTO container with a single document style.
    private var _type : ModelType? = nil;

    public var type : ModelType? {
        get {
            return self._type;
        }
        set {
            self._type = newValue;
        }
    }

    // Field of isHeading. DTO container with a single document style.
    private var _isHeading : Bool? = nil;

    public var isHeading : Bool? {
        get {
            return self._isHeading;
        }
        set {
            self._isHeading = newValue;
        }
    }

    // Field of aliases. DTO container with a single document style.
    private var _aliases : [String]? = nil;

    public var aliases : [String]? {
        get {
            return self._aliases;
        }
        set {
            self._aliases = newValue;
        }
    }

    // Field of styleIdentifier. DTO container with a single document style.
    private var _styleIdentifier : StyleIdentifier? = nil;

    public var styleIdentifier : StyleIdentifier? {
        get {
            return self._styleIdentifier;
        }
        set {
            self._styleIdentifier = newValue;
        }
    }

    // Field of name. DTO container with a single document style.
    private var _name : String? = nil;

    public var name : String? {
        get {
            return self._name;
        }
        set {
            self._name = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case font = "Font";
        case builtIn = "BuiltIn";
        case nextParagraphStyleName = "NextParagraphStyleName";
        case baseStyleName = "BaseStyleName";
        case isQuickStyle = "IsQuickStyle";
        case linkedStyleName = "LinkedStyleName";
        case type = "Type";
        case isHeading = "IsHeading";
        case aliases = "Aliases";
        case styleIdentifier = "StyleIdentifier";
        case name = "Name";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_font = json["Font"] as? [String: Any] {
            self.font = try ObjectSerializer.deserialize(type: Font.self, from: raw_font);
        }

        self.builtIn = json["BuiltIn"] as? Bool;
        self.nextParagraphStyleName = json["NextParagraphStyleName"] as? String;
        self.baseStyleName = json["BaseStyleName"] as? String;
        self.isQuickStyle = json["IsQuickStyle"] as? Bool;
        self.linkedStyleName = json["LinkedStyleName"] as? String;
        if let raw_type = json["Type"] as? String {
            self.type = ModelType(rawValue: raw_type);
        }

        self.isHeading = json["IsHeading"] as? Bool;
        if let raw_aliases = json["Aliases"] as? [Any] {
            self.aliases = try raw_aliases.map {
                if let element_aliases = $0 as? String {
                    return element_aliases;
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "String");
                }
            };
        }

        if let raw_styleIdentifier = json["StyleIdentifier"] as? String {
            self.styleIdentifier = StyleIdentifier(rawValue: raw_styleIdentifier);
        }

        self.name = json["Name"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.font = try container.decodeIfPresent(Font.self, forKey: .font);
        self.builtIn = try container.decodeIfPresent(Bool.self, forKey: .builtIn);
        self.nextParagraphStyleName = try container.decodeIfPresent(String.self, forKey: .nextParagraphStyleName);
        self.baseStyleName = try container.decodeIfPresent(String.self, forKey: .baseStyleName);
        self.isQuickStyle = try container.decodeIfPresent(Bool.self, forKey: .isQuickStyle);
        self.linkedStyleName = try container.decodeIfPresent(String.self, forKey: .linkedStyleName);
        self.type = try container.decodeIfPresent(ModelType.self, forKey: .type);
        self.isHeading = try container.decodeIfPresent(Bool.self, forKey: .isHeading);
        self.aliases = try container.decodeIfPresent([String].self, forKey: .aliases);
        self.styleIdentifier = try container.decodeIfPresent(StyleIdentifier.self, forKey: .styleIdentifier);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.font != nil) {
            try container.encode(self.font, forKey: .font);
        }
        if (self.builtIn != nil) {
            try container.encode(self.builtIn, forKey: .builtIn);
        }
        if (self.nextParagraphStyleName != nil) {
            try container.encode(self.nextParagraphStyleName, forKey: .nextParagraphStyleName);
        }
        if (self.baseStyleName != nil) {
            try container.encode(self.baseStyleName, forKey: .baseStyleName);
        }
        if (self.isQuickStyle != nil) {
            try container.encode(self.isQuickStyle, forKey: .isQuickStyle);
        }
        if (self.linkedStyleName != nil) {
            try container.encode(self.linkedStyleName, forKey: .linkedStyleName);
        }
        if (self.type != nil) {
            try container.encode(self.type, forKey: .type);
        }
        if (self.isHeading != nil) {
            try container.encode(self.isHeading, forKey: .isHeading);
        }
        if (self.aliases != nil) {
            try container.encode(self.aliases, forKey: .aliases);
        }
        if (self.styleIdentifier != nil) {
            try container.encode(self.styleIdentifier, forKey: .styleIdentifier);
        }
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.builtIn == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "builtIn");
        }
        if (self.isQuickStyle == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isQuickStyle");
        }
        if (self.type == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "type");
        }
        if (self.isHeading == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isHeading");
        }
        if (self.styleIdentifier == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "styleIdentifier");
        }
        try self.font?.validate();

    }

    // Sets font. Gets or sets the character formatting of the style. For list styles this property returns null.
    public func setFont(font : Font?) -> Style {
        self.font = font;
        return self;
    }

    // Gets font. Gets or sets the character formatting of the style. For list styles this property returns null.
    public func getFont() -> Font? {
        return self.font;
    }


    // Sets builtIn. Gets or sets a value indicating whether this style is one of the built-in styles in MS Word.
    public func setBuiltIn(builtIn : Bool?) -> Style {
        self.builtIn = builtIn;
        return self;
    }

    // Gets builtIn. Gets or sets a value indicating whether this style is one of the built-in styles in MS Word.
    public func getBuiltIn() -> Bool? {
        return self.builtIn;
    }


    // Sets nextParagraphStyleName. Gets or sets the name of the style to be applied automatically to a new paragraph inserted after a paragraph formatted with the specified style. This property is not used by Aspose.Words. The next paragraph style will only be applied automatically when you edit the document in MS Word.
    public func setNextParagraphStyleName(nextParagraphStyleName : String?) -> Style {
        self.nextParagraphStyleName = nextParagraphStyleName;
        return self;
    }

    // Gets nextParagraphStyleName. Gets or sets the name of the style to be applied automatically to a new paragraph inserted after a paragraph formatted with the specified style. This property is not used by Aspose.Words. The next paragraph style will only be applied automatically when you edit the document in MS Word.
    public func getNextParagraphStyleName() -> String? {
        return self.nextParagraphStyleName;
    }


    // Sets baseStyleName. Gets or sets the name of the style this style is based on. This will be an empty string if the style is not based on any other style and it can be set to an empty string.
    public func setBaseStyleName(baseStyleName : String?) -> Style {
        self.baseStyleName = baseStyleName;
        return self;
    }

    // Gets baseStyleName. Gets or sets the name of the style this style is based on. This will be an empty string if the style is not based on any other style and it can be set to an empty string.
    public func getBaseStyleName() -> String? {
        return self.baseStyleName;
    }


    // Sets isQuickStyle. Gets or sets a value indicating whether this style is shown in the Quick Style gallery inside MS Word UI.
    public func setIsQuickStyle(isQuickStyle : Bool?) -> Style {
        self.isQuickStyle = isQuickStyle;
        return self;
    }

    // Gets isQuickStyle. Gets or sets a value indicating whether this style is shown in the Quick Style gallery inside MS Word UI.
    public func getIsQuickStyle() -> Bool? {
        return self.isQuickStyle;
    }


    // Sets linkedStyleName. Gets or sets the name of the Style linked to this one. Returns Empty string if no styles are linked.
    public func setLinkedStyleName(linkedStyleName : String?) -> Style {
        self.linkedStyleName = linkedStyleName;
        return self;
    }

    // Gets linkedStyleName. Gets or sets the name of the Style linked to this one. Returns Empty string if no styles are linked.
    public func getLinkedStyleName() -> String? {
        return self.linkedStyleName;
    }


    // Sets type. Gets or sets the style type (paragraph or character).
    public func setType(type : ModelType?) -> Style {
        self.type = type;
        return self;
    }

    // Gets type. Gets or sets the style type (paragraph or character).
    public func getType() -> ModelType? {
        return self.type;
    }


    // Sets isHeading. Gets or sets a value indicating whether the style is one of the built-in Heading styles.
    public func setIsHeading(isHeading : Bool?) -> Style {
        self.isHeading = isHeading;
        return self;
    }

    // Gets isHeading. Gets or sets a value indicating whether the style is one of the built-in Heading styles.
    public func getIsHeading() -> Bool? {
        return self.isHeading;
    }


    // Sets aliases. Gets or sets all aliases of this style. If style has no aliases then empty array of string is returned.
    public func setAliases(aliases : [String]?) -> Style {
        self.aliases = aliases;
        return self;
    }

    // Gets aliases. Gets or sets all aliases of this style. If style has no aliases then empty array of string is returned.
    public func getAliases() -> [String]? {
        return self.aliases;
    }


    // Sets styleIdentifier. Gets or sets the locale independent style identifier for a built-in style. For user defined (custom) styles, this property returns Aspose.Words.StyleIdentifier.User. Aspose.Words.Style.Name.
    public func setStyleIdentifier(styleIdentifier : StyleIdentifier?) -> Style {
        self.styleIdentifier = styleIdentifier;
        return self;
    }

    // Gets styleIdentifier. Gets or sets the locale independent style identifier for a built-in style. For user defined (custom) styles, this property returns Aspose.Words.StyleIdentifier.User. Aspose.Words.Style.Name.
    public func getStyleIdentifier() -> StyleIdentifier? {
        return self.styleIdentifier;
    }


    // Sets name. Gets or sets the name of the style. Cannot be an empty string. If there already is a style with such name in the collection, then this style will override it. All affected nodes will reference new style.
    public func setName(name : String?) -> Style {
        self.name = name;
        return self;
    }

    // Gets name. Gets or sets the name of the style. Cannot be an empty string. If there already is a style with such name in the collection, then this style will override it. All affected nodes will reference new style.
    public func getName() -> String? {
        return self.name;
    }
}
