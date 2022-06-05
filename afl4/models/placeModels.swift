//
//  placeModels.swift
//  afl4
//
//  Created by atallah dafa on 05/06/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String{ self.rawValue }
    
    case restaurant = "Restaurant"
    case museum = "Museum"
    case shopping = "Shopping"
    case monument = "Monument"
}

struct Destination: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let address: String
    let telp: String
    let star: String
    let category: Category.RawValue
    
}

extension Destination{
    static let all: [Destination] = [
        Destination(
            name: "Bon Ami",
            image: "https://www.bonami.co.id/v3/data/stores/bonami-jemursari-1.jpg",
            description: "Staff Bon Ami Bakery berkomitmen untuk memberikan pelayanan terbaik dan menyambut semua Sahabat Bon Ami bagaikan di rumah sendiri. Suguhan olahan Bon Ami Bakery menggunakan resep keluarga dengan sentuhan modern, dibuat secara higienis dengan standard tinggi dan menggunakan bahan-bahan berkualitas. Suguhan Bon Ami Bakery mengingatkan akan momen-momen hangat bersama yang terkasih.",
            address: "Dr. Soetomo 94 Surabaya, Jawa Timur",
            telp:"(031) 562 3800",
            star:"⭐️⭐️⭐️⭐️",
            category: "Restaurant"
        ),
        Destination(
            name: "Ikan Bakar Cianjur (IBC)",
            image: "https://www.javatravel.net/wp-content/uploads/2020/02/Ikan-Bakar-Cianjur-1.jpg",
            description: "Welcome to Ikan Bakar Cianjur. Here at IBC we believe that we're more than a restaurant, we're preservers of Indonesia' Culinary Heritage. As a restaurant, we strive to source locally as much as we can. We have our own greenhouse at our Pandaan outlet, where we grow some of our own hydroponic vegetables -which after each harvest we distribute them to our outlets. We pride in using fresh local ingredients, put together into delicious, healthy, family friendly meals suitable for lunch or dinner",
            address: "Jl. Indragiri No.23, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241",
            telp:" (081) 13866509 ",
            star: "⭐️⭐️⭐️",
            category: "Restaurant"
        ),
        Destination(
            name: "Zangrandi",
            image: "https://hotel-management.binus.ac.id/files/2016/08/DSC06585.jpg",
            description: "Zangrandi adalah kedai es krim yang menjadi salah satu ikon kuliner legendaris Surabaya. Kedai es krim ini berdiri sejak 1930an dan beralamat di pusat Kota Surabaya tepatnya di Jalan Yos Sudarso Nomor 15. Pengelola es krim Zangrandi Felix Tanumulia ditemui Kompas.com pada 2014 menceritakan sejarah Zangrandi di Surabaya. Ia bercerita banyak orang salah kaprah mengira Zangrandi adalah es krim belanda lantaran berdiri sejak zaman kolonial Belanda.",
            address: "Jl. Yos Sudarso No.15, Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur 60271",
            telp:"(031) 5345820",
            star: "⭐️⭐️⭐️⭐️",
            category: "Restaurant"
        ),
        Destination(
            name: "Museum WR Soepratman",
            image:"https://1.bp.blogspot.com/-YjhwLqKXqlM/XX24dDLc0rI/AAAAAAAAJhA/WnsssA299dY1fpKKFqc0lLO6Bf-mrTD4gCKgBGAsYHg/s1600/Musem-WR-Soepratman-Surabaya-photo-feryarifian.jpg",
            description: "Bangunan museum merupakan rumah milik kakak pertama WR. Soepratman, yang bernama Roekiyem Soepratijah. WR. Soepratman tinggal di rumah tersebut pada tahun 1937, hingga akhirnya meninggal dunia pada 17 Agustus 1938. Jl. Mangga No.21, Gedang Sewu, Surabaya Kel. Tambaksari / Kec. Tambaksari. Falisitas yang tersedia di destinasi wisata ini adalah toilet dan AC",
            address: "Jl. Mangga No.21, Tambaksari, Kec. Tambaksari, Kota SBY, Jawa Timur 60136",
            telp:"(031) 5013518",
            star: "⭐️⭐️⭐️",
            category: "Museum"
        ),
        Destination(
            name: "Museum Pendidikan Surabaya",
            image: "https://www.retorika.id/gambar_artikel/362019-11-30%2005.29.42%201.jpg",
            description: "Museum Pendidikan Surabaya merupakan museum tematik yang didirikan sebagai langkah pelestarian sejarah dan budaya bangsa dengan tujuan untuk mendukung kegiatan edukasi, riset dan rekreasi di Kota Surabaya. Diresmikan oleh Walikota Surabaya Tri Rismaharini pada 25 November 2019.",
            address: "Jl. Genteng Kali No.10, Genteng, Kec. Genteng, Kota SBY, Jawa Timur 60275",
            telp:"(031) 1234567",
            star: "⭐️⭐️",
            category: "Museum"
        ),
        Destination(
            name: "Museum De Javasche Bank",
            image:"https://upload.wikimedia.org/wikipedia/commons/7/75/COLLECTIE_TROPENMUSEUM_Het_kantoor_van_de_Javasche_Bank_in_Soerabaja_TMnr_10015463.jpg",
            description: "Museum ini memiliki tiga lantai dan menampilkan sejarah sistem perbankan di Indonesia, foto-foto lama dari Surabaya dan juga koleksi mata uang kuno. Tampilan museum dibagi menjadi tiga ruang yaitu Ruangan Koleksi Mata Uang Lama, Ruangan Koleksi dari Konservasi, dan Ruangan Koleksi Harta Budaya",
            address: "Jl. Garuda No.1, Krembangan Sel., Kec. Krembangan, Kota SBY, Jawa Timur 60175",
            telp:"(031) 3531829",
            star: "⭐️⭐️⭐️",
            category: "Museum"
        ),
        Destination(
            name: "Pakuwon Mall",
            image: "https://asset.kompas.com/crops/ObqRCtMc2s8BhG5_NMn9blfXUCE=/29x0:1013x656/750x500/data/photo/2022/02/14/6209dc9ed8c28.png",
            description: "Pakuwon Mall (sebelumnya bernama Supermal Pakuwon Indah) adalah pusat perbelanjaan terbesar di Indonesia dengan luas NLA sebesar 200.000 m2. Pusat perbelanjaan ini berdampingan dan menyatu dengan Pakuwon Trade Center (atau biasa disingkat PTC). Pusat perbelanjaan ini terletak di Jalan Puncak Indah Lontar no 2, Kompleks Perumahan Pakuwon Indah, Lontar, Sambikerep, Kota Surabaya dan merupakan bagian dari Pakuwon Indah Superblock dengan total luas 30 hektar, tepat di pusat CBD Surabaya Barat",
            address: "Jl. Mayjend. Jonosewojo No.2, Babatan, Kec. Wiyung, Kota SBY, Jawa Timur 60227",
            telp:"(031) 7393 888",
            star: "⭐️⭐️⭐️⭐️⭐️",
            category: "Shopping"
        ),
        Destination(
            name: "Pasar Atom",
            image: "https://surabayatravel.com/wp-content/uploads/2015/03/Pasar-Atom-Surabaya.jpg",
            description: "Pusat Perbelanjaan Pasar Atom berdiri sejak tahun 1972 dan merupakan salah satu pusat perbelanjaan terbesar di Indonesia Timur pada umumnya dan di Surabaya pada khususnya. Pasar Atom merupakan Pusat Perbelanjaan yang sudah terkenal sejak lama akan keramaian dan kepadatan pengunjung serta tingginya perputaran omzet para pedagangnya.",
            address: "Jl. Bunguran No.45, Bongkaran, Kec. Pabean Cantikan, Kota SBY, Jawa Timur 60161",
            telp:"(031) 3551995",
            star: "⭐️⭐️⭐️",
            category: "Shopping"
        ),
        Destination(
            name: "Tunjungan Plaza",
            image: "https://asset.kompas.com/crops/ocI8uUiDGy6ZoLslEZPQmhqZYyE=/42x0:612x380/750x500/data/photo/2019/10/30/5db96041cd782.jpeg",
            description: "Tunjungan Plaza adalah sebuah pusat perbelanjaan terbesar kedua setelah Pakuwon Mall beserta PTC di Surabaya, sekaligus plaza yang paling populer di masyarakat kota Surabaya, yang didirikan pada tahun 1986, dan terakhir dibuka Tunjungan Plaza VI pada tahun 2017",
            address: "Jl. Jenderal Basuki Rachmat No.8-12, Kedungdoro, Kec. Tegalsari, Kota SBY, Jawa Timur 60261",
            telp:"(031) 5311088",
            star: "⭐️⭐️⭐️⭐️⭐️",
            category: "Shopping"
        ),
        Destination(
            name: "Monumen Tugu Pahlawan dan Sepuluh Nopember",
            image: "https://asset.kompas.com/crops/xvrNh5VPIWgmEOr2rybwci3kwtU=/0x0:986x657/750x500/data/photo/2020/01/13/5e1bed0edcc32.jpg",
            description: "Museum Sepuluh November Surabaya adalah salah satu museum yang terletak di Kota Surabaya, dibangun pada tahun 1945. Museum ini dibangun dengan tujuan untuk mempelajari dan memperdalam peristiwa Pertempuran Sepuluh November 1945, Museum Sepuluh November beralamat di Jalan Pahlawan, Surabaya.",
            address: "Pahlawan St, Alun-alun Contong, Bubutan, Surabaya City, East Java 60174",
            telp:"(031) 3571100",
            star: "⭐️⭐️⭐️",
            category: "Monument"
        ),
        Destination(
            name: "Monumen Kapal Selam",
            image: "https://www.surabayarollcake.com/wp-content/uploads/2018/10/Monumen-Kapal-Selam-Monkasel.jpg",
            description: "Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota, monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410, salah satu armada Angkatan Laut Republik Indonesia buatan Uni Soviet tahun 1952.",
            address: "Jl. Pemuda No.39, Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur 60271",
            telp:"(031) 5490410",
            star: "⭐️⭐️⭐️",
            category: "Monument"
        ),
        Destination(
            name: "Monumen Gubernur Suryo",
            image: "https://lh3.googleusercontent.com/p/AF1QipPSPkVyL7eH-cqHhYIQma3FEdbXwKW9WWu3jZsL=s1600-w5472",
            description: "Situated in the province of East Java, the Monumen Gubernur Suryo is located around a small park. The statue was constructed in honour of the first governor, and a national hero, of East Java, Governor Soerjo. It is quite stunning at night when illuminated. You will come across the statue many times while on touring the city as it is located in the city centre.",
            address: "Jl. Gubernur Suryo, Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur 60271",
            telp:"(031) 0987654",
            star: "⭐️⭐️",
            category: "Monument"
        )
    ]
}
