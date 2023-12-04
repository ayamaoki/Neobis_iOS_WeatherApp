//
//  DayView.swift
//  Neobis_iOS_WeatherApp
//
//  Created by Yo on 4/12/23.
//

import Foundation
import UIKit
import SnapKit

class WeatherDayView: UIView {
    
    let temperaturLabel : UILabel = {
        let label = UILabel()
        label.text = "10°C"
        label.textColor = .black
        label.font = UIFont(name: "Montserrat-Regular", size: 12)
        return label
    }()
    
    let weatherIcon : UIImageView = {
        let image = UIImageView()
        
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(temperaturLabel)
        addSubview(weatherIcon)
        
        temperaturLabel.snp.makeConstraints{ make in
            make.centerX.equalTo(snp.centerX)
            make.bottom.equalTo(snp.bottom).inset(10)
        }
        
        weatherIcon.snp.makeConstraints{ make in
            make.bottom.equalTo(temperaturLabel.snp.top).offset(-12)
            make.centerX.equalTo(snp.centerX)
            make.width.equalTo(26)
            make.height.equalTo(26)
        }
    }
}

