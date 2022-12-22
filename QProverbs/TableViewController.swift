//
//  TableViewController.swift
//  QProverbs
//
//  Created by Maxim Tvilinev on 22.12.2022.
//

import UIKit

class TableViewController: UITableViewController {

    var proverbs = [
        Proverb(name: "Қазарсың арықты, көрерсің жарықты", translate: "Арык прокопашь, счастья свет узнаешь", image: "light"),
        Proverb(name: "Түйесі жоқ ауылға тайлақ атан көрінеді", translate: "Аулу, что верблюда не имеет, и верблюжонок — верблюдом покажется", image: "camel"),
        Proverb(name: "Базар — бай, алушы — кедей", translate: "Базар богат, да беден покупатель", image: "bazaar"),
        Proverb(name: "Базар ақшалыға базар, ақшасызға назар", translate: "Базар с деньгами — базар, и без денег — одно расстройство", image: "bazaarNew"),
        Proverb(name: "Базары жақын байымас", translate: "Базаром жить — денег не нажить", image: "bazaarNewT"),
        Proverb(name: "Батыр өлсе — аты қалады, қорқақ өлсе — не қалады?", translate: "Батыр умирает — имя оставляет, трус умирает — ничего не оставляет", image: "batyr"),
        Proverb(name: "Батырға таяқ та – жарақ", translate: "Батыру и палка оружие", image: "batyrNew"),
        Proverb(name: "Бәле қайда — бассаң, аяқ астында", translate: "Беда нежданно появляется всегда", image: "trouble"),
        Proverb(name: "Ұзынсыз қысқа болмас, үлгісіз ұста болмас", translate: "Без длинного короткого не бывает, без сноровки мастера не бывает", image: "leaf"),
        Proverb(name: "Ерінбей еңбек қыл, жалықпай өнер біл", translate: "Без лени трудись, без устали учись", image: "learn"),
        Proverb(name: "Тышқанның тәнірі — мысық", translate: "Бог мыши — кошка", image: "cat"),
        Proverb(name: "Ұры ұрлығын қойса да, ұры атағы қалмайды", translate: "Даже если вор воровать перестанет, прозвище вор от него не отстанет", image: "thief"),
        Proverb(name: "Өз елімнің басы болмасам да, сайының тасы болайын", translate: "Даже если и не буду на родине ханом, буду в овраге камнем", image: "rock")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Пословицы"
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return proverbs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TVCell", for: indexPath) as! TableViewCell
        
        let proverb = proverbs[indexPath.row]
        cell.inputInformationIntoTheCell(proverb: proverb)
        cell.imageProverbs.layer.cornerRadius = cell.imageProverbs.frame.size.height / 2

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showImage" {
            let newSegue = segue.destination as! ViewController
//            newSegue.inputImage.image = UIImage(named: proverb)
        }
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
    }

}
