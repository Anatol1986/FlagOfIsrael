

import UIKit
@IBDesignable

class Flag: UIView {
    var flagScale: CGFloat = 1.0
    
    
    
    var width: CGFloat {
        return min(self.safeAreaLayoutGuide.layoutFrame.height,
                   self.safeAreaLayoutGuide.layoutFrame.width)
    }
    
    var heightDividerInAProportion: CGFloat {
        return max(self.safeAreaLayoutGuide.layoutFrame.height,
                   self.safeAreaLayoutGuide.layoutFrame.width) / 16.0
    }
    
    
    func drawBlueLineTop() -> UIBezierPath {
        let blueLine = UIBezierPath(rect: CGRect (x: 0, y: heightDividerInAProportion * 1.0, width: width, height: heightDividerInAProportion * 2))
        
        return blueLine
    }
    
    func drawBlueLineBottom() -> UIBezierPath {
        let blueLine = UIBezierPath(rect: CGRect (x: 0, y: heightDividerInAProportion * 14.0, width: width, height: heightDividerInAProportion * 2))
        
        return blueLine
    }
    
    func drawDavidStar() -> UIBezierPath {
        let starOfDavid = UIBezierPath()
        
        starOfDavid.move(to: CGPoint (x: width / 2.0, y: heightDividerInAProportion * 6.0))
        starOfDavid.addLine(to: CGPoint(x: width / 4.0, y: heightDividerInAProportion * 10.0))
        starOfDavid.addLine(to: CGPoint(x: width / 4.0 * 3.0, y: heightDividerInAProportion * 10.0))
        starOfDavid.close()
        starOfDavid.lineWidth = heightDividerInAProportion / 2.0
        
        starOfDavid.move(to: CGPoint (x: width / 2.0, y: heightDividerInAProportion * 11.0))
        starOfDavid.addLine(to: CGPoint(x: width / 4.0, y: heightDividerInAProportion * 7.0))
        starOfDavid.addLine(to: CGPoint(x: width / 4.0 * 3.0, y: heightDividerInAProportion * 7.0))
        starOfDavid.close()
        starOfDavid.lineWidth = heightDividerInAProportion / 2.0
        
        return starOfDavid
    }
    
    
    override func draw(_ rect: CGRect) {
        UIColor.blue.setFill()
        drawBlueLineTop().fill()
        UIColor.blue.setFill()
        drawBlueLineBottom().fill()
        UIColor.blue.setStroke()
        drawDavidStar().stroke()
        
    }
    
    
}

