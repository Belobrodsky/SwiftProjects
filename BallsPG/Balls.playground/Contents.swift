import UIKit
import PlaygroundSupport


protocol BallProtocol
{
    init(color:UIColor, radius: Int,coordinates: (x:Int, y:Int))
}

protocol SquareAreaProtocol
{
    init (size:CGSize, color: UIColor)
    func setBalls(withColors:[UIColor], andRadius:Int)
}


public class Ball: UIView, BallProtocol {
    
    required public init(color:UIColor, radius: Int,coordinates: (x:Int, y:Int))
    {
        super.init(frame: CGRect(x: coordinates.x,
                                        y: coordinates.y,width: radius*2,height: radius*2))
        
        self.layer.cornerRadius = self.bounds.width / 2.0
        self.backgroundColor = color
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

public class SquareArea: UIView, SquareAreaProtocol
{
    
    private var balls: [Ball] = []
    private var animator: UIDynamicAnimator?
    private var snapBehavior: UISnapBehavior?
    private var collisionBahavior: UICollisionBehavior
    
    
    required init(size: CGSize, color: UIColor) {
        
        collisionBahavior = UICollisionBehavior(items: [])
        collisionBahavior.setTranslatesReferenceBoundsIntoBoundary(with: UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1))
        
        super.init(frame:
                    CGRect(x: 0, y: 0, width: size.width, height: size.height))
        
        self.backgroundColor = color
        

        
        animator = UIDynamicAnimator(referenceView: self)

        animator?.addBehavior(collisionBahavior)
        
    } //init
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setBalls(withColors: [UIColor], andRadius radius: Int) {
        
        
        for (index, oneBallColor) in withColors.enumerated()
        {
            let coordinateX = 10+(2*radius)*index
            let coordinateY = 10+(2*radius)*index
          
            let ball = Ball(color: oneBallColor, radius: radius, coordinates: (x: coordinateX, y: coordinateY))
            
            
            self.addSubview(ball)
            self.balls.append(ball)
            
            collisionBahavior.addItem(ball)
            
        }
    }
    

    
} //SquareArea

let sizeOfArea = CGSize(width: 600, height: 600)
var area = SquareArea(size: sizeOfArea, color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))


PlaygroundPage.current.liveView = area


