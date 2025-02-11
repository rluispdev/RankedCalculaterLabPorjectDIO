import UIKit

// Função para calcular o saldo de vitórias e derrotas
func getFinalResult(win: Int, lose: Int) -> Int {
    return win - lose
}


// Determina a classificação com base no saldo
func getRank(hankeada: Int) -> String {
    switch hankeada {
    case 0..<10:
        return "Ferro"
    case 10...20:
        return "Bronze"
    case 21...50:
        return "Prata"
    case 51...80:
        return "Ouro"
    case 81...100:
        return "Diamante"
    case 101...:
        return "Imortal"
    default:
        return "Fora do RANK!"
    }
}

// Função que realiza todo o processo e imprime a mensagem final
func showHeroRank(win: Int, lose: Int) {
    
    let balance = getFinalResult(win: win, lose: lose)
    let rank = getRank(hankeada: balance)

    if balance < 0 {
        print("Seu saldo está negativo. Considere melhorar sua estratégia!")
    } else {
       print( "O herói tem saldo de \(balance) e está no rank: \(rank)")
    }

}

showHeroRank(win: 19, lose: 0)
