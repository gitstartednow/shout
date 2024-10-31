import Foundation
import AVFoundation

enum LanguageTypeEnum: String, CaseIterable, Identifiable, Codable, Hashable {
    case americanEnglish = "en-US"
    case britishEnglish = "en-GB"
    case australianEnglish = "en-AU"
    case canadianEnglish = "en-CA"
    case indianEnglish = "en-IN"
    case scottishEnglish = "en-GB-scotland"
    case canadianFrench = "fr-CA"
    case french = "fr-FR"
    case german = "de-DE"
    case swissGerman = "de-CH"
    case italian = "it-IT"
    case japanese = "ja-JP"
    case korean = "ko-KR"
    case chineseMandarin = "zh-CN"
    case chineseHongKong = "zh-HK"
    case chineseTaiwan = "zh-TW"
    case spanish = "es-ES"
    case mexicanSpanish = "es-MX"
    case americanSpanish = "es-US"
    case portuguese = "pt-PT"
    case brazilianPortuguese = "pt-BR"
    case dutch = "nl-NL"
    case belgianDutch = "nl-BE"
    case russian = "ru-RU"
    case arabic = "ar-SA"
    case egyptianArabic = "ar-EG"
    case hindi = "hi-IN"
    case hebrew = "he-IL"
    case turkish = "tr-TR"
    case swedish = "sv-SE"
    case norwegian = "no-NO"
    case finnish = "fi-FI"
    case danish = "da-DK"
    case polish = "pl-PL"
    case greek = "el-GR"

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .americanEnglish: return "American English"
        case .britishEnglish: return "British English"
        case .australianEnglish: return "Australian English"
        case .canadianEnglish: return "Canadian English"
        case .indianEnglish: return "Indian English"
        case .scottishEnglish: return "Scottish English"
        case .canadianFrench: return "Canadian French"
        case .french: return "French"
        case .german: return "German"
        case .swissGerman: return "Swiss German"
        case .italian: return "Italian"
        case .japanese: return "Japanese"
        case .korean: return "Korean"
        case .chineseMandarin: return "Chinese (Mandarin)"
        case .chineseHongKong: return "Chinese (Hong Kong)"
        case .chineseTaiwan: return "Chinese (Taiwan)"
        case .spanish: return "Spanish"
        case .mexicanSpanish: return "Mexican Spanish"
        case .americanSpanish: return "American Spanish"
        case .portuguese: return "Portuguese"
        case .brazilianPortuguese: return "Brazilian Portuguese"
        case .dutch: return "Dutch"
        case .belgianDutch: return "Belgian Dutch"
        case .russian: return "Russian"
        case .arabic: return "Arabic"
        case .egyptianArabic: return "Egyptian Arabic"
        case .hindi: return "Hindi"
        case .hebrew: return "Hebrew"
        case .turkish: return "Turkish"
        case .swedish: return "Swedish"
        case .norwegian: return "Norwegian"
        case .finnish: return "Finnish"
        case .danish: return "Danish"
        case .polish: return "Polish"
        case .greek: return "Greek"
        }
    }

    var voice: AVSpeechSynthesisVoice? {
        return AVSpeechSynthesisVoice(language: self.rawValue)
    }
}