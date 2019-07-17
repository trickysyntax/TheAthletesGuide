////
////  LeagueModel.swift
////  The Athlete's Guide
////
////  Created by Developer on 5/30/19.
////  Copyright © 2019 Ciderhouse. All rights reserved.
////
//
//import Foundation
//
//protocol FeatureSetModelProtocol: class {
//    func itemsDownloaded(items: NSArray)
//}
//
//class FeatureSetModel: NSObject, URLSessionDataDelegate {
//    //properties
//
//    weak var delegate: FeatureSetModelProtocol!
//
//    var data = Data()
//    
//    // This file was generated from JSON Schema using quicktype, do not modify it directly.
//    // To parse the JSON, add this file to your project and do:
//    //
//    //   let features = try? newJSONDecoder().decode(Features.self, from: jsonData)
//    
//    
//    // MARK: - Features
//    struct Features: Codable {
//        let website: Website?
//        let websiteSettings: WebsiteSettings?
//        let collection: Collection?
//        let shoppingCart: ShoppingCart?
//        let shareButtons: ShareButtons?
//        let showCart: Bool?
//        let localizedStrings: LocalizedStrings?
//        let userAccountsContext: UserAccountsContext?
//        let template: Template?
//        let empty, emptyFolder, calendarView: Bool?
//        let pagination: Pagination?
//        let items: [Item]?
//    }
//    
//    // MARK: - Collection
//    struct Collection: Codable {
//        let id: ID?
//        let websiteID, mainImageID: String?
//        let mainImage: MainImage?
//        let video: Video?
//        let backgroundSource: Int?
//        let enabled, starred: Bool?
//        let type, ordering: Int?
//        let title, navigationTitle, urlID: String?
//        let itemCount, updatedOn: Int?
//        let collectionDescription: String?
//        let pageSize: Int?
//        let features: FeaturesClass?
//        let eventView: Int?
//        let folder, dropdown: Bool?
//        let tags, categories: [String]?
//        let homepage: Bool?
//        let typeName, regionName: String?
//        let synchronizing, categoryPagesSEOHidden, tagPagesSEOHidden: Bool?
//        let typeLabel, fullURL: String?
//        let passwordProtected: Bool?
//        let pagePermissionType: Int?
//        
//        enum CodingKeys: String, CodingKey {
//            case id
//            case websiteID = "websiteId"
//            case mainImageID = "mainImageId"
//            case mainImage, video, backgroundSource, enabled, starred, type, ordering, title, navigationTitle
//            case urlID = "urlId"
//            case itemCount, updatedOn
//            case collectionDescription = "description"
//            case pageSize, features, eventView, folder, dropdown, tags, categories, homepage, typeName, regionName, synchronizing
//            case categoryPagesSEOHidden = "categoryPagesSeoHidden"
//            case tagPagesSEOHidden = "tagPagesSeoHidden"
//            case typeLabel
//            case fullURL = "fullUrl"
//            case passwordProtected, pagePermissionType
//        }
//    }
//    
//    // MARK: - FeaturesClass
//    struct FeaturesClass: Codable {
//        let relatedItems, productQuickView: ProductQuickView?
//    }
//    
//    // MARK: - ProductQuickView
//    struct ProductQuickView: Codable {
//        let isEnabled: Bool?
//    }
//    
//    enum ID: String, Codable {
//        case the59678B3072Af65090758D1F4 = "59678b3072af65090758d1f4"
//    }
//    
//    // MARK: - MainImage
//    struct MainImage: Codable {
//        let id: String?
//        let recordType, addedOn, updatedOn, workflowState: Int?
//        let publishOn: Int?
//        let authorID, systemDataID, systemDataVariants: String?
//        let systemDataSourceType: SystemDataSourceType?
//        let filename: String?
//        let mediaFocalPoint: MediaFocalPoint?
//        let colorData: ColorData?
//        let urlID, title: String?
//        let body: JSONNull?
//        let likeCount, commentCount, publicCommentCount, commentState: Int?
//        let unsaved: Bool?
//        let author: Author?
//        let assetURL: String?
//        let contentType: ContentType?
//        let pushedServices, pendingPushedServices: LocalizedStrings?
//        let recordTypeLabel, originalSize: String?
//        
//        enum CodingKeys: String, CodingKey {
//            case id, recordType, addedOn, updatedOn, workflowState, publishOn
//            case authorID = "authorId"
//            case systemDataID = "systemDataId"
//            case systemDataVariants, systemDataSourceType, filename, mediaFocalPoint, colorData
//            case urlID = "urlId"
//            case title, body, likeCount, commentCount, publicCommentCount, commentState, unsaved, author
//            case assetURL = "assetUrl"
//            case contentType, pushedServices, pendingPushedServices, recordTypeLabel, originalSize
//        }
//    }
//    
//    // MARK: - Author
//    struct Author: Codable {
//        let id, displayName, firstName, lastName: String?
//        let avatarURL: String?
//        let avatarID: String?
//        let websiteURL: String?
//        let bio: String?
//        let avatarAssetURL: String?
//        
//        enum CodingKeys: String, CodingKey {
//            case id, displayName, firstName, lastName
//            case avatarURL = "avatarUrl"
//            case avatarID = "avatarId"
//            case websiteURL = "websiteUrl"
//            case bio
//            case avatarAssetURL = "avatarAssetUrl"
//        }
//    }
//    
//    // MARK: - ColorData
//    struct ColorData: Codable {
//        let topLeftAverage, topRightAverage, bottomLeftAverage, bottomRightAverage: String?
//        let centerAverage, suggestedBgColor: String?
//    }
//    
//    enum ContentType: String, Codable {
//        case imageJPEG = "image/jpeg"
//        case imagePNG = "image/png"
//    }
//    
//    // MARK: - MediaFocalPoint
//    struct MediaFocalPoint: Codable {
//        let x, y: Double?
//        let source: Int?
//    }
//    
//    // MARK: - LocalizedStrings
//    struct LocalizedStrings: Codable {
//    }
//    
//    enum SystemDataSourceType: String, Codable {
//        case jpg = "JPG"
//        case png = "PNG"
//    }
//    
//    // MARK: - Video
//    struct Video: Codable {
//        let playbackSpeed, zoom: Int?
//    }
//    
//    // MARK: - Item
//    struct Item: Codable {
//        let id: String?
//        let collectionID: ID?
//        let recordType, addedOn, updatedOn: Int?
//        let starred, passthrough: Bool?
//        let tags: [JSONAny]?
//        let categories: [Category]?
//        let workflowState, publishOn: Int?
//        let authorID, systemDataID, systemDataVariants: String?
//        let systemDataSourceType: SystemDataSourceType?
//        let filename: String?
//        let mediaFocalPoint: MediaFocalPoint?
//        let colorData: ColorData?
//        let urlID, title, sourceURL, body: String?
//        let excerpt: String?
//        let location: ItemLocation?
//        let customContent: JSONNull?
//        let likeCount, commentCount, publicCommentCount, commentState: Int?
//        let unsaved: Bool?
//        let author: Author?
//        let fullURL: String?
//        let assetURL: String?
//        let contentType: ContentType?
//        let items: [JSONAny]?
//        let pushedServices: PushedServices?
//        let pendingPushedServices: LocalizedStrings?
//        let recordTypeLabel: RecordTypeLabel?
//        let originalSize: String?
//        
//        enum CodingKeys: String, CodingKey {
//            case id
//            case collectionID = "collectionId"
//            case recordType, addedOn, updatedOn, starred, passthrough, tags, categories, workflowState, publishOn
//            case authorID = "authorId"
//            case systemDataID = "systemDataId"
//            case systemDataVariants, systemDataSourceType, filename, mediaFocalPoint, colorData
//            case urlID = "urlId"
//            case title
//            case sourceURL = "sourceUrl"
//            case body, excerpt, location, customContent, likeCount, commentCount, publicCommentCount, commentState, unsaved, author
//            case fullURL = "fullUrl"
//            case assetURL = "assetUrl"
//            case contentType, items, pushedServices, pendingPushedServices, recordTypeLabel, originalSize
//        }
//    }
//    
//    enum Category: String, Codable {
//        case advice = "Advice"
//        case fashion = "Fashion"
//        case stories = "Stories"
//    }
//    
//    // MARK: - ItemLocation
//    struct ItemLocation: Codable {
//        let mapZoom: Int?
//        let mapLat, mapLng, markerLat, markerLng: Double?
//    }
//    
//    // MARK: - PushedServices
//    struct PushedServices: Codable {
//        let twitter347240905: Bool?
//        
//        enum CodingKeys: String, CodingKey {
//            case twitter347240905 = "twitter-347240905"
//        }
//    }
//    
//    enum RecordTypeLabel: String, Codable {
//        case text = "text"
//    }
//    
//    // MARK: - Pagination
//    struct Pagination: Codable {
//        let nextPage: Bool?
//        let nextPageOffset: Int?
//        let nextPageURL: String?
//        let pageSize: Int?
//        
//        enum CodingKeys: String, CodingKey {
//            case nextPage, nextPageOffset
//            case nextPageURL = "nextPageUrl"
//            case pageSize
//        }
//    }
//    
//    // MARK: - ShareButtons
//    struct ShareButtons: Codable {
//        let twitter, facebook, pinterest, google: Bool?
//    }
//    
//    // MARK: - ShoppingCart
//    struct ShoppingCart: Codable {
//        let websiteID: String?
//        let created: Int?
//        let entries, shippingOptions: [JSONAny]?
//        let shippingLocation: LocalizedStrings?
//        let taxLineItems, coupons, promoCodes, appliedGiftCards: [JSONAny]?
//        let cartType: Int?
//        let validCoupons, invalidCoupons: [JSONAny]?
//        let subtotalCents, taxCents, shippingCostCents, discountCents: Int?
//        let giftCardRedemptionTotalCents, grandTotalCents, amountDueCents, totalQuantity: Int?
//        let purelyDigital, hasDigital, requiresShipping: Bool?
//        
//        enum CodingKeys: String, CodingKey {
//            case websiteID = "websiteId"
//            case created, entries, shippingOptions, shippingLocation, taxLineItems, coupons, promoCodes, appliedGiftCards, cartType, validCoupons, invalidCoupons, subtotalCents, taxCents, shippingCostCents, discountCents, giftCardRedemptionTotalCents, grandTotalCents, amountDueCents, totalQuantity, purelyDigital, hasDigital, requiresShipping
//        }
//    }
//    
//    // MARK: - Template
//    struct Template: Codable {
//        let mobileStylesEnabled: Bool?
//    }
//    
//    // MARK: - UserAccountsContext
//    struct UserAccountsContext: Codable {
//        let showSignInLink: Bool?
//    }
//    
//    // MARK: - Website
//    struct Website: Codable {
//        let id, identifier: String?
//        let websiteType, contentModifiedOn: Int?
//        let cloneable: Bool?
//        let siteStatus: LocalizedStrings?
//        let language, timeZone: String?
//        let machineTimeZoneOffset, timeZoneOffset: Int?
//        let timeZoneAbbr, siteTitle, siteTagLine, siteDescription: String?
//        let location: ContactLocationClass?
//        let logoImageID, socialLogoImageID: String?
//        let shareButtonOptions: [String: Bool]?
//        let logoImageURL, socialLogoImageURL: String?
//        let authenticURL, internalURL, baseURL: String?
//        let primaryDomain: String?
//        let sslSetting: Int?
//        let isHstsEnabled: Bool?
//        let socialAccounts: [SocialAccount]?
//        let typekitID: String?
//        let statsMigrated, imageMetadataProcessingEnabled: Bool?
//        let screenshotID: String?
//        let showOwnerLogin: Bool?
//        
//        enum CodingKeys: String, CodingKey {
//            case id, identifier, websiteType, contentModifiedOn, cloneable, siteStatus, language, timeZone, machineTimeZoneOffset, timeZoneOffset, timeZoneAbbr, siteTitle, siteTagLine, siteDescription, location
//            case logoImageID = "logoImageId"
//            case socialLogoImageID = "socialLogoImageId"
//            case shareButtonOptions
//            case logoImageURL = "logoImageUrl"
//            case socialLogoImageURL = "socialLogoImageUrl"
//            case authenticURL = "authenticUrl"
//            case internalURL = "internalUrl"
//            case baseURL = "baseUrl"
//            case primaryDomain, sslSetting, isHstsEnabled, socialAccounts
//            case typekitID = "typekitId"
//            case statsMigrated, imageMetadataProcessingEnabled
//            case screenshotID = "screenshotId"
//            case showOwnerLogin
//        }
//    }
//    
//    // MARK: - ContactLocationClass
//    struct ContactLocationClass: Codable {
//        let addressLine1, addressLine2, addressCountry: String?
//    }
//    
//    // MARK: - SocialAccount
//    struct SocialAccount: Codable {
//        let serviceID: Int?
//        let userID, screenname: String?
//        let addedOn: Int?
//        let profileURL: String?
//        let iconURL: String?
//        let metaData: MetaData?
//        let iconEnabled: Bool?
//        let serviceName, userName, collectionID: String?
//        
//        enum CodingKeys: String, CodingKey {
//            case serviceID = "serviceId"
//            case userID = "userId"
//            case screenname, addedOn
//            case profileURL = "profileUrl"
//            case iconURL = "iconUrl"
//            case metaData, iconEnabled, serviceName, userName
//            case collectionID = "collectionId"
//        }
//    }
//    
//    // MARK: - MetaData
//    struct MetaData: Codable {
//        let service: String?
//    }
//    
//    // MARK: - WebsiteSettings
//    struct WebsiteSettings: Codable {
//        let id, websiteID: String?
//        let subjects: [JSONAny]?
//        let country, state: String?
//        let simpleLikingEnabled: Bool?
//        let mobileInfoBarSettings: MobileInfoBarSettings?
//        let announcementBarSettings: AnnouncementBarSettings?
//        let popupOverlaySettings: PopupOverlaySettings?
//        let commentLikesAllowed, commentAnonAllowed, commentThreaded, commentApprovalRequired: Bool?
//        let commentAvatarsOn: Bool?
//        let commentSortType, commentFlagThreshold: Int?
//        let commentFlagsAllowed, commentEnableByDefault: Bool?
//        let commentDisableAfterDaysDefault: Int?
//        let disqusShortname, collectionTitleFormat, itemTitleFormat: String?
//        let commentsEnabled: Bool?
//        let businessHours: BusinessHours?
//        let storeSettings: StoreSettings?
//        let useEscapeKeyToLogin: Bool?
//        let ssBadgeType, ssBadgePosition, ssBadgeVisibility, ssBadgeDevices: Int?
//        let pinterestOverlayOptions: PinterestOverlayOptions?
//        let ampEnabled, seoHidden: Bool?
//        let userAccountsSettings: UserAccountsSettings?
//        let contactEmail, contactPhoneNumber: String?
//        
//        enum CodingKeys: String, CodingKey {
//            case id
//            case websiteID = "websiteId"
//            case subjects, country, state, simpleLikingEnabled, mobileInfoBarSettings, announcementBarSettings, popupOverlaySettings, commentLikesAllowed, commentAnonAllowed, commentThreaded, commentApprovalRequired, commentAvatarsOn, commentSortType, commentFlagThreshold, commentFlagsAllowed, commentEnableByDefault, commentDisableAfterDaysDefault, disqusShortname, collectionTitleFormat, itemTitleFormat, commentsEnabled, businessHours, storeSettings, useEscapeKeyToLogin, ssBadgeType, ssBadgePosition, ssBadgeVisibility, ssBadgeDevices, pinterestOverlayOptions, ampEnabled, seoHidden, userAccountsSettings, contactEmail, contactPhoneNumber
//        }
//    }
//    
//    // MARK: - AnnouncementBarSettings
//    struct AnnouncementBarSettings: Codable {
//        let style: Int?
//        let text: String?
//        let clickthroughURL: ClickthroughURL?
//        
//        enum CodingKeys: String, CodingKey {
//            case style, text
//            case clickthroughURL = "clickthroughUrl"
//        }
//    }
//    
//    // MARK: - ClickthroughURL
//    struct ClickthroughURL: Codable {
//        let url: String?
//        let newWindow: Bool?
//    }
//    
//    // MARK: - BusinessHours
//    struct BusinessHours: Codable {
//        let monday, tuesday, wednesday, thursday: Day?
//        let friday, saturday, sunday: Day?
//    }
//    
//    // MARK: - Day
//    struct Day: Codable {
//        let text: String?
//        let ranges: [LocalizedStrings]?
//    }
//    
//    // MARK: - MobileInfoBarSettings
//    struct MobileInfoBarSettings: Codable {
//        let isContactEmailEnabled, isContactPhoneNumberEnabled, isLocationEnabled, isBusinessHoursEnabled: Bool?
//    }
//    
//    // MARK: - PinterestOverlayOptions
//    struct PinterestOverlayOptions: Codable {
//        let mode, size, shape, color: String?
//    }
//    
//    // MARK: - PopupOverlaySettings
//    struct PopupOverlaySettings: Codable {
//        let style: Int?
//        let showOnScroll: Bool?
//        let scrollPercentage: Int?
//        let showOnTimer: Bool?
//        let timerDelay: Int?
//        let showUntilSignup: Bool?
//        let displayFrequency: Int?
//        let enableMobile: Bool?
//        let enabledPages: [JSONAny]?
//        let showOnAllPages: Bool?
//        let version: Int?
//    }
//    
//    // MARK: - StoreSettings
//    struct StoreSettings: Codable {
//        let returnPolicy, termsOfService, privacyPolicy: JSONNull?
//        let paymentSettings: PaymentSettings?
//        let expressCheckout: Bool?
//        let continueShoppingLinkURL: String?
//        let useLightCart, showNoteField: Bool?
//        let shippingCountryDefaultValue: String?
//        let billToShippingDefaultValue, showShippingPhoneNumber, isShippingPhoneRequired, showBillingPhoneNumber: Bool?
//        let isBillingPhoneRequired: Bool?
//        let currenciesSupported: [String]?
//        let defaultCurrency, selectedCurrency: String?
//        let measurementStandard: Int?
//        let showCustomCheckoutForm, enableMailingListOptInByDefault: Bool?
//        let contactLocation: ContactLocationClass?
//        let businessName: String?
//        let sameAsRetailLocation: Bool?
//        let businessID: String?
//        let merchandisingSettings: MerchandisingSettings?
//        let isLive, multipleQuantityAllowedForServices: Bool?
//        
//        enum CodingKeys: String, CodingKey {
//            case returnPolicy, termsOfService, privacyPolicy, paymentSettings, expressCheckout
//            case continueShoppingLinkURL = "continueShoppingLinkUrl"
//            case useLightCart, showNoteField, shippingCountryDefaultValue, billToShippingDefaultValue, showShippingPhoneNumber, isShippingPhoneRequired, showBillingPhoneNumber, isBillingPhoneRequired, currenciesSupported, defaultCurrency, selectedCurrency, measurementStandard, showCustomCheckoutForm, enableMailingListOptInByDefault, contactLocation, businessName, sameAsRetailLocation
//            case businessID = "businessId"
//            case merchandisingSettings, isLive, multipleQuantityAllowedForServices
//        }
//    }
//    
//    // MARK: - MerchandisingSettings
//    struct MerchandisingSettings: Codable {
//        let scarcityEnabledOnProductItems, scarcityEnabledOnProductBlocks: Bool?
//        let scarcityMessageType: String?
//        let scarcityThreshold: Int?
//        let multipleQuantityAllowedForServices, restockNotificationsEnabled, relatedProductsEnabled: Bool?
//    }
//    
//    // MARK: - PaymentSettings
//    struct PaymentSettings: Codable {
//        let stripeLivePublicAPIKey, stripeTestPublicAPIKey, stripeUserID, stripeAccountCountry: String?
//        let paypalLiveMerchantID: String?
//        
//        enum CodingKeys: String, CodingKey {
//            case stripeLivePublicAPIKey = "stripeLivePublicApiKey"
//            case stripeTestPublicAPIKey = "stripeTestPublicApiKey"
//            case stripeUserID = "stripeUserId"
//            case stripeAccountCountry
//            case paypalLiveMerchantID = "paypalLiveMerchantId"
//        }
//    }
//    
//    // MARK: - UserAccountsSettings
//    struct UserAccountsSettings: Codable {
//        let loginAllowed, signupAllowed: Bool?
//    }
//    
//    // MARK: - Encode/decode helpers
//    
//    class JSONNull: Codable, Hashable {
//        
//        public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
//            return true
//        }
//        
//        public var hashValue: Int {
//            return 0
//        }
//        
//        public func hash(into hasher: inout Hasher) {
//            // No-op
//        }
//        
//        public init() {}
//        
//        public required init(from decoder: Decoder) throws {
//            let container = try decoder.singleValueContainer()
//            if !container.decodeNil() {
//                throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
//            }
//        }
//        
//        public func encode(to encoder: Encoder) throws {
//            var container = encoder.singleValueContainer()
//            try container.encodeNil()
//        }
//    }
//    
//    class JSONCodingKey: CodingKey {
//        let key: String
//        
//        required init?(intValue: Int) {
//            return nil
//        }
//        
//        required init?(stringValue: String) {
//            key = stringValue
//        }
//        
//        var intValue: Int? {
//            return nil
//        }
//        
//        var stringValue: String {
//            return key
//        }
//    }
//    
//    class JSONAny: Codable {
//        
//        let value: Any
//        
//        static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
//            let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
//            return DecodingError.typeMismatch(JSONAny.self, context)
//        }
//        
//        static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
//            let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
//            return EncodingError.invalidValue(value, context)
//        }
//        
//        static func decode(from container: SingleValueDecodingContainer) throws -> Any {
//            if let value = try? container.decode(Bool.self) {
//                return value
//            }
//            if let value = try? container.decode(Int64.self) {
//                return value
//            }
//            if let value = try? container.decode(Double.self) {
//                return value
//            }
//            if let value = try? container.decode(String.self) {
//                return value
//            }
//            if container.decodeNil() {
//                return JSONNull()
//            }
//            throw decodingError(forCodingPath: container.codingPath)
//        }
//        
//        static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
//            if let value = try? container.decode(Bool.self) {
//                return value
//            }
//            if let value = try? container.decode(Int64.self) {
//                return value
//            }
//            if let value = try? container.decode(Double.self) {
//                return value
//            }
//            if let value = try? container.decode(String.self) {
//                return value
//            }
//            if let value = try? container.decodeNil() {
//                if value {
//                    return JSONNull()
//                }
//            }
//            if var container = try? container.nestedUnkeyedContainer() {
//                return try decodeArray(from: &container)
//            }
//            if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
//                return try decodeDictionary(from: &container)
//            }
//            throw decodingError(forCodingPath: container.codingPath)
//        }
//        
//        static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
//            if let value = try? container.decode(Bool.self, forKey: key) {
//                return value
//            }
//            if let value = try? container.decode(Int64.self, forKey: key) {
//                return value
//            }
//            if let value = try? container.decode(Double.self, forKey: key) {
//                return value
//            }
//            if let value = try? container.decode(String.self, forKey: key) {
//                return value
//            }
//            if let value = try? container.decodeNil(forKey: key) {
//                if value {
//                    return JSONNull()
//                }
//            }
//            if var container = try? container.nestedUnkeyedContainer(forKey: key) {
//                return try decodeArray(from: &container)
//            }
//            if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
//                return try decodeDictionary(from: &container)
//            }
//            throw decodingError(forCodingPath: container.codingPath)
//        }
//        
//        static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
//            var arr: [Any] = []
//            while !container.isAtEnd {
//                let value = try decode(from: &container)
//                arr.append(value)
//            }
//            return arr
//        }
//        
//        static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
//            var dict = [String: Any]()
//            for key in container.allKeys {
//                let value = try decode(from: &container, forKey: key)
//                dict[key.stringValue] = value
//            }
//            return dict
//        }
//        
//        static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
//            for value in array {
//                if let value = value as? Bool {
//                    try container.encode(value)
//                } else if let value = value as? Int64 {
//                    try container.encode(value)
//                } else if let value = value as? Double {
//                    try container.encode(value)
//                } else if let value = value as? String {
//                    try container.encode(value)
//                } else if value is JSONNull {
//                    try container.encodeNil()
//                } else if let value = value as? [Any] {
//                    var container = container.nestedUnkeyedContainer()
//                    try encode(to: &container, array: value)
//                } else if let value = value as? [String: Any] {
//                    var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
//                    try encode(to: &container, dictionary: value)
//                } else {
//                    throw encodingError(forValue: value, codingPath: container.codingPath)
//                }
//            }
//        }
//        
//        static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
//            for (key, value) in dictionary {
//                let key = JSONCodingKey(stringValue: key)!
//                if let value = value as? Bool {
//                    try container.encode(value, forKey: key)
//                } else if let value = value as? Int64 {
//                    try container.encode(value, forKey: key)
//                } else if let value = value as? Double {
//                    try container.encode(value, forKey: key)
//                } else if let value = value as? String {
//                    try container.encode(value, forKey: key)
//                } else if value is JSONNull {
//                    try container.encodeNil(forKey: key)
//                } else if let value = value as? [Any] {
//                    var container = container.nestedUnkeyedContainer(forKey: key)
//                    try encode(to: &container, array: value)
//                } else if let value = value as? [String: Any] {
//                    var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
//                    try encode(to: &container, dictionary: value)
//                } else {
//                    throw encodingError(forValue: value, codingPath: container.codingPath)
//                }
//            }
//        }
//        
//        static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
//            if let value = value as? Bool {
//                try container.encode(value)
//            } else if let value = value as? Int64 {
//                try container.encode(value)
//            } else if let value = value as? Double {
//                try container.encode(value)
//            } else if let value = value as? String {
//                try container.encode(value)
//            } else if value is JSONNull {
//                try container.encodeNil()
//            } else {
//                throw encodingError(forValue: value, codingPath: container.codingPath)
//            }
//        }
//        
//        public required init(from decoder: Decoder) throws {
//            if var arrayContainer = try? decoder.unkeyedContainer() {
//                self.value = try JSONAny.decodeArray(from: &arrayContainer)
//            } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
//                self.value = try JSONAny.decodeDictionary(from: &container)
//            } else {
//                let container = try decoder.singleValueContainer()
//                self.value = try JSONAny.decode(from: container)
//            }
//        }
//        
//        public func encode(to encoder: Encoder) throws {
//            if let arr = self.value as? [Any] {
//                var container = encoder.unkeyedContainer()
//                try JSONAny.encode(to: &container, array: arr)
//            } else if let dict = self.value as? [String: Any] {
//                var container = encoder.container(keyedBy: JSONCodingKey.self)
//                try JSONAny.encode(to: &container, dictionary: dict)
//            } else {
//                var container = encoder.singleValueContainer()
//                try JSONAny.encode(to: &container, value: self.value)
//            }
//        }
//    }
//    let urlPath: String = "https://ourbaseballlife.com/blog?format=json-pretty"
//    func downloadItems() {
//
//        let url: URL = URL(string: urlPath)!
//        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
//
//        let task = defaultSession.dataTask(with: url) { (data, response, error) in
//
//            if error != nil {
//                print("Failed to download data")
//            } else {
//                print("Data downloaded")
//                self.parseJSON(data!)
//            }
//        }
//
//        task.resume()
//    }
//
//    func parseJSON(_ data:Data) {
//        var jsonResult = NSDictionary()
//
//        do{
//            jsonResult = try JSONSerialization.jsonObject(with: data, options:JSONSerialization.ReadingOptions.allowFragments) as! NSDictionary
//
//
//        } catch let error as NSError {
//            print(error)
//
//        }
//
//        var jsonElement = NSDictionary()
//        let features = NSMutableArray()
//        for _ in 0 ..< jsonResult.count
//        {
//
//            jsonElement = jsonResult["items"] as! NSDictionary
//
//            let feature = featureModel()
//            for feature in features {
//            if let title = jsonElement["title"] as? String,
//                let body = jsonElement["body"] as? String,
//                let authorAvatarUrl = jsonElement["avatarUrl"] as? String,
//                let authorDisplayName = jsonElement["displayName"] as? String,
//                let assetUrl = jsonElement["assetUrl"] as? String
//            {
////                feature.title = title
////                feature.body = body
////                feature.authorAvatarUrl = authorAvatarUrl
////                feature.authorDisplayName = authorDisplayName
////                feature.assetUrl = assetUrl
//            }
//
//            features.add(feature)
//            }
//        }
//
//        DispatchQueue.main.async(execute: { () -> Void in
//
//            self.delegate.itemsDownloaded(items: features)
//
//        })
//    }
//}
//
