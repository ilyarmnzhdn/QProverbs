//
//  TableViewController.swift
//  QProverbs
//
//  Created by Maxim Tvilinev on 22.12.2022.
//

import UIKit

class TableViewController: UITableViewController {

    var proverbs = [
        Proverb(name: "Қазарсың арықты, көрерсің жарықты", translate: "Арык прокопашь, счастья свет узнаешь", image: "chelovek-pauk-cherez-vselennie-1920x1080-chelovek-pauk-cherez-vselennie-20634"),
        Proverb(name: "Түйесі жоқ ауылға тайлақ атан көрінеді", translate: "Аулу, что верблюда не имеет, и верблюжонок — верблюдом покажется", image: ""),
        Proverb(name: "Базар — бай, алушы — кедей", translate: "Базар богат, да беден покупатель", image: ""),
        Proverb(name: "Базар ақшалыға базар, ақшасызға назар", translate: "Базар с деньгами — базар, и без денег — одно расстройство", image: ""),
        Proverb(name: "Базары жақын байымас", translate: "Базаром жить — денег не нажить", image: ""),
        Proverb(name: "Борсықты ұрған сайын семіреді", translate: "Барсук от ударов толстеет", image: ""),
        Proverb(name: "Батыр өлсе — аты қалады, қорқақ өлсе — не қалады?", translate: "Батыр умирает — имя оставляет, трус умирает — ничего не оставляет", image: ""),
        Proverb(name: "Батырға таяқ та – жарақ", translate: "Батыру и палка оружие", image: ""),
        Proverb(name: "Бәле қайда — бассаң, аяқ астында", translate: "Беда нежданно появляется всегда", image: ""),
        Proverb(name: "Жоқтық ұят емес, тоқтық мұрат емес", translate: "Бедность – не порок, богатство – не предел мечты", image: ""),
        Proverb(name: "Байға жағынамын деп, жарлының тоқтылы қойы шығыпты", translate: "Бедняк богатому понравиться старался и без овцы с ягненком остался", image: "12.jpg"),
        Proverb(name: "Кедей байға жетсем дейді, бай кұдайға жетсем дейді", translate: "Бедняк богатым стать мечтает, богатый богом стать желает", image: "13.jpg"),
        Proverb(name: "Жарлы байғұс жамалар, жамалар да, жаңарар", translate: "Бедняк заплатку пришьет — и тому рад", image: "14.jpg"),
        Proverb(name: "Жарлының бір тойғаны шала байығаны", translate: "Бедняк раз досыта поел — уже наполовину разбогател", image: "15.jpg"),
        Proverb(name: "Кедейге өлең айтқан да шығын", translate: "Бедняку песни лишний раз петь — убыток терпеть", image: "16.jpg"),
        Proverb(name: "Ұзынсыз қысқа болмас, үлгісіз ұста болмас", translate: "Без длинного короткого не бывает, без сноровки мастера не бывает", image: "17.jpg"),
        Proverb(name: "Ерінбей еңбек қыл, жалықпай өнер біл", translate: "Без лени трудись, без устали учись", image: "18.jpg"),
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

}
