//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Berke Topcu on 1.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Kullanıcının telefonu hangi modda kullandığına bakılmaksınız bu view controller çağrıldığında light mode kullandırmak için.
        overrideUserInterfaceStyle = .light
    }
//Kullanıcı view controller değiştikce ui değişikliği gerçekleşiyor. LifeCycle Methodlarından ötürü
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            button.tintColor = UIColor.green
        } else {
            button.tintColor = UIColor.blue
        }
    }
    // Kullanıcının bir uygulamadan  başka bir uygulamaya geçmesi gibi durumları kontrol edilip dinlenebilmesi ve  tekrar uygulamaya döndüğünde UI değişikliği yapılabilmesi için traitCollectionDidChange
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        //userInterfaceStyle, kullanıcının mevcut arayüzündeki durumları alabilmemizi sağladığımız bir özellik bu özelliği traitCollection sayesinde dinleyebiliyoruz. Ve burdan gelen bilgilerin kontrolü sayesinde istediğim hale getiriyoruz.
        
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            button.tintColor = UIColor.green
        } else {
            button.tintColor = UIColor.blue
        }
    }
}

