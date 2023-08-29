//
//  Currency.swift
//  lordOfRIngsConverter
//
//  Created by David McDermott on 8/29/23.
//

// case iterable allows you to treat enum as like an array
enum Currency: Double, CaseIterable {
    case copperPenny = 640
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
    
    func convert(amount: String, toCurrency: Currency) -> String {
        guard let startAmount = Double(amount) else {
            return ""
        }
        
        let convertedAmt = (startAmount / self.rawValue) * toCurrency.rawValue
        
        if convertedAmt > 0.0 {
            return String(format: "%.2f", convertedAmt)
        } else {
            return ""
        }
    }
}

enum CurrencyText: String, CaseIterable {
    case copperPenny = "Copper Penny"
    case silverPenny = "Silver Penny"
    case silverPiece = "Silver Piece"
    case goldPenny = "Gold Penny"
    case goldPiece = "Gold Piece"
}

enum CurrencyImg: String, CaseIterable {
    case copperPenny = "copperpenny"
    case silverPenny = "silverpenny"
    case silverPiece = "silverpiece"
    case goldPenny = "goldpenny"
    case goldPiece = "goldpiece"
}
