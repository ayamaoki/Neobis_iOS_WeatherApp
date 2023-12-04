//
//  MainView.swift
//  Neobis_iOS_WeatherApp
//
//  Created by Yo on 4/12/23.
//

import Foundation
import UIKit
import SnapKit

class MainView : UIView {
    
    let gradientLayer = CAGradientLayer()
    
    let sizeInfoView = 230
    
    let searchButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "search"), for: .normal)
        return button
    }()
    
    let dateLabel: UILabel = {
        let labels = UILabel()
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, dd MMMM yyyy"
        let dateString = formatter.string(from: date)
        labels.text = dateString
        labels.textColor = .white
        labels.font = UIFont(name: "Montserrat", size: 14)
        return labels
    }()

    
    let cityLabel : UILabel = {
        let label = UILabel()
        label.text = "Bishkek"
        label.textColor = .white
        label.font = UIFont(name: "Montserrat-Bold", size: 40)
        return label
    }()
    
    let countryLabel : UILabel = {
        let label = UILabel()
        label.text = "Kyrgyzstan"
        label.textColor = .white
        label.font = UIFont(name: "Montserrat-Thin", size: 20)
        return label
    }()
    
    let circleView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.shadowColor = UIColor.white.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 50.0
        view.layer.masksToBounds = false
        return view
    }()
    
    let mainImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "image")
        return image
    }()

    let temperatureLabel : UILabel = {
        let label = UILabel()
        label.text = "10°C"
        label.font = UIFont(name: "Montserrat-Light", size: 90)
        return label
    }()
    
    let windStatus : UILabel = {
        let label = UILabel()
        label.text = "Wind status"
        label.font = UIFont(name: "Montserrat-Bold", size: 14)
        label.textColor = .white
        return label
    }()
    
    let windStatusValue : UILabel = {
        let label = UILabel()
        label.text = "mph"
        label.font = UIFont(name: "Montserrat", size: 24)
        label.textColor = .white
        return label
    }()
    
    let visibility : UILabel = {
        let label = UILabel()
        label.text = "Visibility"
        label.font = UIFont(name: "Montserrat-Bold", size: 14)
        label.textColor = .white
        return label
    }()
    
    let visibilityStatus : UILabel = {
        let label = UILabel()
        label.text = "miles"
        label.font = UIFont(name: "Montserrat", size: 24)
        label.textColor = .white
        return label
    }()
    
    let humidity : UILabel = {
        let label = UILabel()
        label.text = "Humidity"
        label.font = UIFont(name: "Montserrat-Bold", size: 14)
        label.textColor = .white
        return label
    }()
    
    let humidityStatus : UILabel = {
        let label = UILabel()
        label.text = "%"
        label.font = UIFont(name: "Montserrat", size: 24)
        label.textColor = .white
        return label
    }()
    
    let airPressure : UILabel = {
        let label = UILabel()
        label.text = "Air pressure"
        label.font = UIFont(name: "Montserrat-Bold", size: 14)
        label.textColor = .white
        return label
    }()
    
    let airPressureStatus : UILabel = {
        let label = UILabel()
        label.text = "mb"
        label.font = UIFont(name: "Montserrat", size: 24)
        label.textColor = .white
        return label
    }()
    
    let weekView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 50
        return view
    }()
    
    let weekLabel : UILabel = {
        let label = UILabel()
        label.text = "The Next 5 days"
        label.textColor = .black
        label.font = UIFont(name: "Montserrat-Bold", size: 14)
        return label
    }()
    
    let view1 : WeatherDayView = {
        let view = WeatherDayView()
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor(red: 212/255, green: 212/255, blue: 212/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 0.8
        return view
    }()
    
    let view2 : WeatherDayView = {
        let view = WeatherDayView()
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor(red: 212/255, green: 212/255, blue: 212/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 0.8
        return view
    }()
    
    let view3 : WeatherDayView = {
        let view = WeatherDayView()
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor(red: 212/255, green: 212/255, blue: 212/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 0.8
        return view
    }()
    
    let view4 : WeatherDayView = {
        let view = WeatherDayView()
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor(red: 212/255, green: 212/255, blue: 212/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 0.8
        return view
    }()
    
    let view5 : WeatherDayView = {
        let view = WeatherDayView()
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor(red: 212/255, green: 212/255, blue: 212/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 0.8
        return view
    }()
    
    let stackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    let firstDayLabel : UILabel = {
        let label = UILabel()
        let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: Date())
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        label.text = dateFormatter.string(from: tomorrow!)
        label.textColor = .black
        label.font = UIFont(name: "Montserrat-Medium", size: 10)
        return label
    }()
    
    let secondDayLabel : UILabel = {
        let label = UILabel()
        let tomorrow = Calendar.current.date(byAdding: .day, value: 2, to: Date())
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        label.text = dateFormatter.string(from: tomorrow!)
        label.textColor = .black
        label.font = UIFont(name: "Montserrat-Medium", size: 10)
        return label
    }()
    
    let thirdDayLabel : UILabel = {
        let label = UILabel()
        let tomorrow = Calendar.current.date(byAdding: .day, value: 3, to: Date())
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        label.text = dateFormatter.string(from: tomorrow!)
        label.textColor = .black
        label.font = UIFont(name: "Montserrat-Medium", size: 10)
        return label
    }()
    
    let fourthDayLabel : UILabel = {
        let label = UILabel()
        let tomorrow = Calendar.current.date(byAdding: .day, value: 4, to: Date())
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        label.text = dateFormatter.string(from: tomorrow!)
        label.textColor = .black
        label.font = UIFont(name: "Montserrat-Medium", size: 10)
        return label
    }()
    
    let fifthDayLabel : UILabel = {
        let label = UILabel()
        let tomorrow = Calendar.current.date(byAdding: .day, value: 5, to: Date())
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        label.text = dateFormatter.string(from: tomorrow!)
        label.textColor = .black
        label.font = UIFont(name: "Montserrat-Medium", size: 10)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [
            UIColor(red: 48/255, green: 162/255, blue: 197/255, alpha: 1.0).cgColor,
            UIColor(red: 0/255, green: 36/255, blue: 47/255, alpha: 1.0).cgColor]
        layer.addSublayer(gradientLayer)
        setupUI()
        setupConstraints()
    }
    
    func setupUI(){
        addSubview(searchButton)
        addSubview(dateLabel)
        addSubview(cityLabel)
        addSubview(countryLabel)
        addSubview(circleView)
        addSubview(mainImage)
        addSubview(temperatureLabel)
        addSubview(windStatus)
        addSubview(windStatusValue)
        addSubview(visibility)
        addSubview(visibilityStatus)
        addSubview(humidity)
        addSubview(humidityStatus)
        addSubview(airPressure)
        addSubview(airPressureStatus)
        addSubview(weekView)
        addSubview(weekLabel)
        addSubview(stackView)
        [view1, view2, view3, view4, view5].forEach { stackView.addArrangedSubview($0) }
        addSubview(firstDayLabel)
        addSubview(secondDayLabel)
        addSubview(thirdDayLabel)
        addSubview(fourthDayLabel)
        addSubview(fifthDayLabel)
    }
    
    func setupConstraints(){
        searchButton.snp.makeConstraints{ make in
            make.top.equalToSuperview().inset(50)
            make.trailing.equalToSuperview().inset(25)
        }
        
        dateLabel.snp.makeConstraints{ make in
            make.top.equalTo(searchButton).inset(50)
            make.centerX.equalToSuperview()
        }
        
        cityLabel.snp.makeConstraints{ make in
            make.top.equalTo(dateLabel).inset(15)
            make.centerX.equalToSuperview()
        }
        
        countryLabel.snp.makeConstraints{ make in
            make.top.equalTo(cityLabel.snp.bottom)
            make.centerX.equalToSuperview()
        }
        
        circleView.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(countryLabel.snp.bottomMargin).offset(30)
            make.height.equalTo(sizeInfoView)
            make.width.equalTo(sizeInfoView)
        }
        circleView.layer.cornerRadius = CGFloat(sizeInfoView/2)
        
        mainImage.snp.makeConstraints{ make in
            make.top.equalTo(circleView.snp.top).inset(15)
            make.centerX.equalTo(circleView.snp.centerX)
            make.height.equalTo(75)
            make.width.equalTo(75)
        }
        
        temperatureLabel.snp.makeConstraints{ make in
            make.centerX.equalTo(circleView.snp.centerX)
            make.centerY.equalTo(circleView.snp.centerY).offset(20)
        }
        
        windStatus.snp.makeConstraints{ make in
            make.centerX.equalToSuperview().offset(-80)
            make.top.equalTo(circleView.snp.bottom).offset(20)
        }
        
        windStatusValue.snp.makeConstraints{ make in
            make.centerX.equalTo(windStatus)
            make.top.equalTo(windStatus.snp.bottom).offset(5)
        }
        
        visibility.snp.makeConstraints{ make in
            make.centerX.equalToSuperview().offset(80)
            make.top.equalTo(circleView.snp.bottom).offset(20)
        }
        
        visibilityStatus.snp.makeConstraints{ make in
            make.centerX.equalTo(visibility)
            make.top.equalTo(visibility.snp.bottom).offset(5)
        }
        
        humidity.snp.makeConstraints{ make in
            make.centerX.equalTo(windStatus)
            make.top.equalTo(windStatusValue.snp.bottom).offset(20)
        }
        
        humidityStatus.snp.makeConstraints{ make in
            make.centerX.equalTo(humidity)
            make.top.equalTo(humidity.snp.bottom).offset(5)
        }
        
        airPressure.snp.makeConstraints{ make in
            make.centerX.equalTo(visibility)
            make.top.equalTo(visibilityStatus.snp.bottom).offset(20)
        }
        
        airPressureStatus.snp.makeConstraints{ make in
            make.centerX.equalTo(visibility)
            make.top.equalTo(airPressure.snp.bottom).offset(5)
        }
        
        weekView.snp.makeConstraints{ make in
            make.bottom.equalToSuperview()
            make.top.equalTo(humidityStatus.snp.bottom).offset(30)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
        weekLabel.snp.makeConstraints{ make in
            make.top.equalTo(weekView.snp.top).inset(50)
            make.leading.equalTo(weekView.snp.leading).inset(12)
        }
        
        stackView.snp.makeConstraints{ make in
            make.bottom.equalTo(weekView.snp.bottom).inset(70)
            make.height.equalTo(70)
            make.leading.equalTo(weekView.snp.leading).inset(10)
            make.trailing.equalTo(weekView.snp.trailing).inset(10)
        }
        
        firstDayLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(view1.snp.top).offset(-5)
            make.centerX.equalTo(view1.snp.centerX)
        }
        
        secondDayLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(view2.snp.top).offset(-5)
            make.centerX.equalTo(view2.snp.centerX)
        }
        
        thirdDayLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(view3.snp.top).offset(-5)
            make.centerX.equalTo(view3.snp.centerX)
        }
        
        fourthDayLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(view4.snp.top).offset(-5)
            make.centerX.equalTo(view4.snp.centerX)
        }
        
        fifthDayLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(view5.snp.top).offset(-5)
            make.centerX.equalTo(view5.snp.centerX)
        }
    }
}

