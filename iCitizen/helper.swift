import UIKit

class Helper {
    
    static func bulletedList(strings:[String], textColor:UIColor, font:UIFont, bulletColor:UIColor, bulletSize: Int) -> NSMutableAttributedString {
        let textAttributesDictionary = [NSAttributedStringKey.font : font, NSAttributedStringKey.foregroundColor:textColor]
        
        let bulletAttributesDictionary = [NSAttributedStringKey.font : font.withSize(CGFloat(bulletSize)), NSAttributedStringKey.foregroundColor:bulletColor]
        let fullAttributedString = NSMutableAttributedString.init()
        
        for string: String in strings
        {
            let bulletPoint: String = "\u{2022}"
            let formattedString: String = "\(bulletPoint) \(string)\n"
            let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: formattedString)
            let paragraphStyle = createParagraphAttribute()
            
            attributedString.addAttributes([NSAttributedStringKey.paragraphStyle: paragraphStyle], range: NSMakeRange(0, attributedString.length))
            attributedString.addAttributes(textAttributesDictionary, range: NSMakeRange(0, attributedString.length))
            
            let string:NSString = NSString(string: formattedString)
            let rangeForBullet:NSRange = string.range(of: bulletPoint)
            
            attributedString.addAttributes(bulletAttributesDictionary, range: rangeForBullet)
            fullAttributedString.append(attributedString)
        }
        return fullAttributedString
    }
    
    static func createParagraphAttribute() -> NSParagraphStyle {
        
        var paragraphStyle: NSMutableParagraphStyle
        paragraphStyle = NSParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
        paragraphStyle.tabStops = [NSTextTab(textAlignment: .left, location: 15/*, options: NSDictionary() as! [String : AnyObject]*/)]
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 0
        paragraphStyle.lineSpacing = 3
        paragraphStyle.headIndent = 10
        return paragraphStyle
    }
}
