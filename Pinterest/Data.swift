

import Foundation
class Data {
    var listTypeItem : [ItemType]=[]
    var listItem : [LOLItem]=[]

    init() {
        let str:[String] = ["Trang bị khởi đầu","Sát thương vật lý","Sát thương phép thuật","Trang bị chống chịu","Chí mạng","Tốc độ đánh"]
        for i in  0..<str.count {
            
            let type = ItemType(typeId: i , tpyeName: str[i])
            self.listTypeItem.append(type)
        }
        
        // ao choang lua
        let hongNgoc = LOLItem(id: 0,name: "Hồng ngọc",icon: "hong-ngoc",subItem: [],price: 0,content: "",type: [self.listTypeItem[3]])
        
        let tanTichBami = LOLItem(id: 1,name: "Tàn tích của bami",icon: "tan-tich-cua-bami",subItem: [hongNgoc],price: 0,content: "",type: [self.listTypeItem[3]])
        let giapLua = LOLItem(id: 2,name: "Giáp lụa", icon: "giap-lua",subItem: [],price: 0,content: "",type: [self.listTypeItem[3]])
        let giapLuoi = LOLItem(id: 3,name: "Giáp lưới",icon: "giap-luoi",subItem: [giapLua],price: 0,content: "",type: [self.listTypeItem[3]])
        let aoChoangLua = LOLItem(id: 4,name: "Áo Choàng Lửa",icon: "ao-choang-lua",subItem: [tanTichBami,giapLuoi,hongNgoc],price: 0,content: "",type: [self.listTypeItem[3]])
        
        // mu phu thuy
        
        let gayQuaKho = LOLItem(id: 5 , name: "Gậy quá khổ",icon: "gay-qua-kho",subItem: [],price: 0,content: "",type: [self.listTypeItem[2]])
        let muPhuThuy = LOLItem(id: 6,name: "Mũ phù thuỷ",icon: "mu-phu-thuy-rabadon",subItem: [gayQuaKho,gayQuaKho],price: 0,content: "",type: [self.listTypeItem[2]])
        let gayBungNo = LOLItem(id: 7,name: "Gậy bùng nổ",icon: "gay-bung-no",subItem: [],price: 0,content: "",type: [self.listTypeItem[2]])
        let sachCu = LOLItem(id: 8,name: "Sách cũ",icon: "sach-cu",subItem: [],price: 0,content: "",type: [self.listTypeItem[2]])
        let truongHuVo = LOLItem(id: 9,name: "Trượng hư vô",icon: "truong-hu-vo",subItem: [gayBungNo,sachCu],price: 0,content: "",type: [self.listTypeItem[2]])
        
      
        
        //vo cuc kiem
        let aoChoangTim = LOLItem(id: 10,name: "Áo choàng tím",icon: "ao-choang-tim",subItem: [],price: 0,content: "",type: [self.listTypeItem[1]])
        let cuocChim = LOLItem(id: 11,name: "Cuốc chim",icon: "cuoc-chim",subItem: [],price: 0,content: "",type: [self.listTypeItem[1]])
        let voCucKiem = LOLItem(id: 12,name: "Vô cực kiếm",icon: "vo-cuc-kiem",subItem: [cuocChim,aoChoangTim],price: 0,content: "",type: [self.listTypeItem[1],self.listTypeItem[4]])
        
        // dai bác lien thanh
        
        let daoGam = LOLItem(id: 13,name: "Dao găm",icon: "dao-gam",subItem: [],price: 0,content: "",type: [self.listTypeItem[5]])
        let songKiem = LOLItem(id: 14,name: "Song Kiếm",icon: "song-kiem",subItem: [daoGam,aoChoangTim],price: 0,content: "",type: [self.listTypeItem[4],self.listTypeItem[5]])
        
        let daiBacLienThanh = LOLItem(id: 15,name: "Đại bác liên thanh",icon: "dai-bac-lien-thanh",subItem: [songKiem,daoGam],price: 0,content: "",type: [self.listTypeItem[4],self.listTypeItem[5]])
        
        // Trang bị khởi đầu
        
        let kiemDoran = LOLItem(id: 100,name: "Kiếm Doran", icon: "kiem-doran",subItem: [],price: 0,content: "",type: [self.listTypeItem[0]])
        
        
        let khienDoran = LOLItem(id: 101,name: "Khiên Doran", icon: "khien-doran",subItem: [],price: 0,content: "",type: [self.listTypeItem[0]])
        
        let nhanDoran = LOLItem(id: 102,name: "Nhẫn Doran", icon: "nhan-doran",subItem: [],price: 0,content: "",type: [self.listTypeItem[0]])
        
        self.listItem.append(kiemDoran)
        self.listItem.append(khienDoran)
        self.listItem.append(nhanDoran)
        
        self.listItem.append(hongNgoc)
        self.listItem.append(tanTichBami)
        self.listItem.append(giapLua)
        self.listItem.append(giapLuoi)
        self.listItem.append(aoChoangLua)
        
        self.listItem.append(gayQuaKho)
        self.listItem.append(muPhuThuy)
        self.listItem.append(gayBungNo)
        self.listItem.append(sachCu)
        self.listItem.append(truongHuVo)
        
        self.listItem.append(daoGam)
        self.listItem.append(aoChoangTim)
        self.listItem.append(songKiem)
        self.listItem.append(daiBacLienThanh)
        self.listItem.append(cuocChim)
        self.listItem.append(voCucKiem)
       
        
        
    }

}
