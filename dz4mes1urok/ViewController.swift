//
//  ViewController.swift
//  dz4mes1urok
//
//  Created by Ажо Алмасбеков on 20/12/22.
//

import UIKit
import SnapKit


class ViewController: UIViewController {

    var topView = UIView()
    var topView2 = UIView()
    var topView3 = UIView()
    
    var whiteHalfView:UIView = {
        let view = UIView()
        view .backgroundColor = .white
        return view
    } ()
    
    var redHalfView:UIView = {
        let view = UIView()
        view .backgroundColor = .red
        return view
    } ()
    
    var verticalView:UIView = {
        let view = UIView()
        view .backgroundColor = .lightGray
        return view
    } ()
    
    var horizontalView:UIView = {
        let view = UIView()
        view .backgroundColor = .lightGray
        return view
    } ()
    
    
    
    var circleImageView: UIImageView = {
        let c = UIImageView()
        c.image = UIImage(systemName: "circle.fill")
        c.tintColor = .orange
        return c
    }()
    
    var thirdFlagView: UIView = {
        let view = UIView ()
        view.backgroundColor = .white
        return view
    }()
    
    var thirdFlagView2: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    var thirdFlagView3: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    var plusTopView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    var plusTopView2: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    var plusBottomView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    var plusBottomView2: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    var plusRightView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    var plusRightView2: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    var plusRightView3: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    var plusRightView4: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        view.backgroundColor = .cyan
        
    }

    func setupSubviews() {
        view.addSubview(topView)
        view.addSubview(topView2)
        view.addSubview(topView3)
        view.addSubview(circleImageView)
        
        horizontalView.layer.borderWidth = 2
        horizontalView.layer.borderColor = UIColor.red.cgColor
        verticalView.layer.borderWidth = 2
        verticalView.layer.borderColor = UIColor.red.cgColor
        
        circleImageView.snp.makeConstraints{make in
            
            make.top.equalTo(topView.snp.bottom)
            make.centerX.equalTo(topView2.snp.centerX)
            make.centerY.equalTo(topView2.snp.centerY)
            make.height.equalTo(100)
            make.width.equalTo(100)

            
        }
        topView.backgroundColor = .orange
        topView2.backgroundColor = .white
        topView3.backgroundColor = .green
        
        
        topView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(50)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(100)
        }
        
        topView2.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(100)
        }
        
        topView3.snp.makeConstraints { make in
            make.top.equalTo(topView2.snp.bottom)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(100)
        }
        
        view.addSubview(whiteHalfView)
        
        whiteHalfView.snp.makeConstraints { make in
            make.top.equalTo(topView3.snp.bottom).offset(10)
            make.left.equalToSuperview()
            make.height.equalTo(230)
            
        }
        
        view.addSubview(redHalfView)
        
        redHalfView.snp.makeConstraints { make in
            make.top.equalTo(topView3.snp.bottom).offset(10)
            make.left.equalTo(whiteHalfView.snp.right)
            make.right.equalToSuperview()
            make.height.equalTo(230)
        }
        
        view.addSubview(horizontalView)
        
        horizontalView.snp.makeConstraints { make in
            make.top.equalTo(whiteHalfView.snp.top).offset(30)
            make.left.equalTo(whiteHalfView.snp.left).offset(20)
            make.right.equalTo(whiteHalfView.snp.right).offset(-130)
            make.height.equalTo(17)
            make.width.equalTo(45)
        }
        
        view.addSubview(verticalView)
        
        verticalView.snp.makeConstraints { make in
            make.top.equalTo(whiteHalfView.snp.top).offset(15)
            make.left.equalTo(whiteHalfView.snp.left).offset(33)
            make.width.equalTo(17)
            make.height.equalTo(45)
           
        }
        
        view.addSubview(thirdFlagView)
        
        thirdFlagView.snp.makeConstraints { make in
            
            make.top.equalTo(redHalfView.snp.bottom).offset(10)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(250)
        }
        
        view.addSubview(thirdFlagView2)
        
        thirdFlagView2.snp.makeConstraints { make in
            make.top.equalTo(thirdFlagView.snp.top).offset(95)
            make.height.equalTo(60)
            make.width.equalToSuperview()
        }
        
        view.addSubview(thirdFlagView3)
        
        thirdFlagView3.snp.makeConstraints { make in
            make.top.equalTo(thirdFlagView.snp.top)
            make.left.equalTo(thirdFlagView.snp.left).offset(175)
            make.height.equalTo(250)
            make.width.equalTo(60)
        }
        
        view.addSubview(plusTopView)
        
        plusTopView.snp.makeConstraints { make in
            make.top.equalTo(thirdFlagView.snp.top).offset(22)
            make.left.equalTo(thirdFlagView.snp.left).offset(70)
            make.height.equalTo(50)
            make.width.equalTo(11)
        }
        
        view.addSubview(plusTopView2)
        
        plusTopView2.snp.makeConstraints { make in
            make.top.equalTo(thirdFlagView.snp.top).offset(41)
            make.left.equalTo(thirdFlagView.snp.left).offset(51)
            make.height.equalTo(11)
            make.width.equalTo(50)
        }
        
        view.addSubview(plusBottomView)
        
        plusBottomView.snp.makeConstraints { make in
            make.bottom.equalTo(thirdFlagView.snp.bottom).offset(-22)
            make.left.equalTo(thirdFlagView.snp.left).offset(70)
            make.height.equalTo(50)
            make.width.equalTo(11)
        }
        
        view.addSubview(plusBottomView2)
        
        plusBottomView2.snp.makeConstraints { make in
            make.bottom.equalTo(thirdFlagView.snp.bottom).offset(-41)
            make.left.equalTo(thirdFlagView.snp.left).offset(51)
            make.height.equalTo(11)
            make.width.equalTo(50)
        }
        
        view.addSubview(plusRightView)
        
        plusRightView.snp.makeConstraints { make in
            make.top.equalTo(thirdFlagView.snp.top).offset(22)
            make.right.equalTo(thirdFlagView.snp.right).offset(-70)
            make.height.equalTo(50)
            make.width.equalTo(11)
        }
        
        view.addSubview(plusRightView2)
        
        plusRightView2.snp.makeConstraints { make in
            make.top.equalTo(thirdFlagView.snp.top).offset(41)
            make.right.equalTo(thirdFlagView.snp.right).offset(-51)
            make.height.equalTo(11)
            make.width.equalTo(50)
        }
        
        view.addSubview(plusRightView3)
        
        plusRightView3.snp.makeConstraints { make in
            make.bottom.equalTo(thirdFlagView.snp.bottom).offset(-22)
            make.right.equalTo(thirdFlagView.snp.right).offset(-70)
            make.height.equalTo(50)
            make.width.equalTo(11)
        }
        
        view.addSubview(plusRightView4)
        
        plusRightView4.snp.makeConstraints { make in
            make.bottom.equalTo(thirdFlagView.snp.bottom).offset(-41)
            make.right.equalTo(thirdFlagView.snp.right).offset(-51)
            make.height.equalTo(11)
            make.width.equalTo(50)
        }
        
        
}

}
