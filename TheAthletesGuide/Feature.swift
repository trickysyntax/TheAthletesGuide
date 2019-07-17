// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let features = try Features(json)

import Foundation
import UIKit

// MARK: - Features
struct Feature: Codable {
    let website: Website?
    let websiteSettings: WebsiteSettings?
    let collection: Collection?
    let shoppingCart: ShoppingCart?
    let shareButtons: ShareButtons?
    let showCart: Bool?
    let localizedStrings: LocalizedStrings?
    let userAccountsContext: UserAccountsContext?
    let template: Template?
    let empty, emptyFolder, calendarView: Bool?
    let pagination: Pagination?
    let items: [Item]?
}

// MARK: Features convenience initializers and mutators

extension Feature {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Feature.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        website: Website?? = nil,
        websiteSettings: WebsiteSettings?? = nil,
        collection: Collection?? = nil,
        shoppingCart: ShoppingCart?? = nil,
        shareButtons: ShareButtons?? = nil,
        showCart: Bool?? = nil,
        localizedStrings: LocalizedStrings?? = nil,
        userAccountsContext: UserAccountsContext?? = nil,
        template: Template?? = nil,
        empty: Bool?? = nil,
        emptyFolder: Bool?? = nil,
        calendarView: Bool?? = nil,
        pagination: Pagination?? = nil,
        items: [Item]?? = nil
        ) -> Feature {
        return Feature(
            website: website ?? self.website,
            websiteSettings: websiteSettings ?? self.websiteSettings,
            collection: collection ?? self.collection,
            shoppingCart: shoppingCart ?? self.shoppingCart,
            shareButtons: shareButtons ?? self.shareButtons,
            showCart: showCart ?? self.showCart,
            localizedStrings: localizedStrings ?? self.localizedStrings,
            userAccountsContext: userAccountsContext ?? self.userAccountsContext,
            template: template ?? self.template,
            empty: empty ?? self.empty,
            emptyFolder: emptyFolder ?? self.emptyFolder,
            calendarView: calendarView ?? self.calendarView,
            pagination: pagination ?? self.pagination,
            items: items ?? self.items
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Collection
struct Collection: Codable {
    let id: ID?
    let websiteID, mainImageID: String?
    let mainImage: MainImage?
    let video: Video?
    let backgroundSource: Int?
    let enabled, starred: Bool?
    let type, ordering: Int?
    let title, navigationTitle, urlID: String?
    let itemCount, updatedOn: Int?
    let collectionDescription: String?
    let pageSize: Int?
    let features: FeaturesClass?
    let eventView: Int?
    let folder, dropdown: Bool?
    let tags, categories: [String]?
    let homepage: Bool?
    let typeName, regionName: String?
    let synchronizing, categoryPagesSEOHidden, tagPagesSEOHidden: Bool?
    let typeLabel, fullURL: String?
    let passwordProtected: Bool?
    let pagePermissionType: Int?
    
    enum CodingKeys: String, CodingKey {
        case id
        case websiteID = "websiteId"
        case mainImageID = "mainImageId"
        case mainImage, video, backgroundSource, enabled, starred, type, ordering, title, navigationTitle
        case urlID = "urlId"
        case itemCount, updatedOn
        case collectionDescription = "description"
        case pageSize, features, eventView, folder, dropdown, tags, categories, homepage, typeName, regionName, synchronizing
        case categoryPagesSEOHidden = "categoryPagesSeoHidden"
        case tagPagesSEOHidden = "tagPagesSeoHidden"
        case typeLabel
        case fullURL = "fullUrl"
        case passwordProtected, pagePermissionType
    }
}

// MARK: Collection convenience initializers and mutators

extension Collection {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Collection.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        id: ID?? = nil,
        websiteID: String?? = nil,
        mainImageID: String?? = nil,
        mainImage: MainImage?? = nil,
        video: Video?? = nil,
        backgroundSource: Int?? = nil,
        enabled: Bool?? = nil,
        starred: Bool?? = nil,
        type: Int?? = nil,
        ordering: Int?? = nil,
        title: String?? = nil,
        navigationTitle: String?? = nil,
        urlID: String?? = nil,
        itemCount: Int?? = nil,
        updatedOn: Int?? = nil,
        collectionDescription: String?? = nil,
        pageSize: Int?? = nil,
        features: FeaturesClass?? = nil,
        eventView: Int?? = nil,
        folder: Bool?? = nil,
        dropdown: Bool?? = nil,
        tags: [String]?? = nil,
        categories: [String]?? = nil,
        homepage: Bool?? = nil,
        typeName: String?? = nil,
        regionName: String?? = nil,
        synchronizing: Bool?? = nil,
        categoryPagesSEOHidden: Bool?? = nil,
        tagPagesSEOHidden: Bool?? = nil,
        typeLabel: String?? = nil,
        fullURL: String?? = nil,
        passwordProtected: Bool?? = nil,
        pagePermissionType: Int?? = nil
        ) -> Collection {
        return Collection(
            id: id ?? self.id,
            websiteID: websiteID ?? self.websiteID,
            mainImageID: mainImageID ?? self.mainImageID,
            mainImage: mainImage ?? self.mainImage,
            video: video ?? self.video,
            backgroundSource: backgroundSource ?? self.backgroundSource,
            enabled: enabled ?? self.enabled,
            starred: starred ?? self.starred,
            type: type ?? self.type,
            ordering: ordering ?? self.ordering,
            title: title ?? self.title,
            navigationTitle: navigationTitle ?? self.navigationTitle,
            urlID: urlID ?? self.urlID,
            itemCount: itemCount ?? self.itemCount,
            updatedOn: updatedOn ?? self.updatedOn,
            collectionDescription: collectionDescription ?? self.collectionDescription,
            pageSize: pageSize ?? self.pageSize,
            features: features ?? self.features,
            eventView: eventView ?? self.eventView,
            folder: folder ?? self.folder,
            dropdown: dropdown ?? self.dropdown,
            tags: tags ?? self.tags,
            categories: categories ?? self.categories,
            homepage: homepage ?? self.homepage,
            typeName: typeName ?? self.typeName,
            regionName: regionName ?? self.regionName,
            synchronizing: synchronizing ?? self.synchronizing,
            categoryPagesSEOHidden: categoryPagesSEOHidden ?? self.categoryPagesSEOHidden,
            tagPagesSEOHidden: tagPagesSEOHidden ?? self.tagPagesSEOHidden,
            typeLabel: typeLabel ?? self.typeLabel,
            fullURL: fullURL ?? self.fullURL,
            passwordProtected: passwordProtected ?? self.passwordProtected,
            pagePermissionType: pagePermissionType ?? self.pagePermissionType
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - FeaturesClass
struct FeaturesClass: Codable {
    let relatedItems, productQuickView: ProductQuickView?
}

// MARK: FeaturesClass convenience initializers and mutators

extension FeaturesClass {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(FeaturesClass.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        relatedItems: ProductQuickView?? = nil,
        productQuickView: ProductQuickView?? = nil
        ) -> FeaturesClass {
        return FeaturesClass(
            relatedItems: relatedItems ?? self.relatedItems,
            productQuickView: productQuickView ?? self.productQuickView
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ProductQuickView
struct ProductQuickView: Codable {
    let isEnabled: Bool?
}

// MARK: ProductQuickView convenience initializers and mutators

extension ProductQuickView {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ProductQuickView.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        isEnabled: Bool?? = nil
        ) -> ProductQuickView {
        return ProductQuickView(
            isEnabled: isEnabled ?? self.isEnabled
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum ID: String, Codable {
    case the59678B3072Af65090758D1F4 = "59678b3072af65090758d1f4"
}

// MARK: - MainImage
struct MainImage: Codable {
    let id: String?
    let recordType, addedOn, updatedOn, workflowState: Int?
    let publishOn: Int?
    let authorID, systemDataID, systemDataVariants: String?
    let systemDataSourceType: SystemDataSourceType?
    let filename: String?
    let mediaFocalPoint: MediaFocalPoint?
    let colorData: ColorData?
    let urlID, title: String?
    let body: JSONNull?
    let likeCount, commentCount, publicCommentCount, commentState: Int?
    let unsaved: Bool?
    let author: Author?
    let assetURL: URL?
    let contentType: ContentType?
    let pushedServices, pendingPushedServices: LocalizedStrings?
    let recordTypeLabel, originalSize: String?
    
    enum CodingKeys: String, CodingKey {
        case id, recordType, addedOn, updatedOn, workflowState, publishOn
        case authorID = "authorId"
        case systemDataID = "systemDataId"
        case systemDataVariants, systemDataSourceType, filename, mediaFocalPoint, colorData
        case urlID = "urlId"
        case title, body, likeCount, commentCount, publicCommentCount, commentState, unsaved, author
        case assetURL = "assetUrl"
        case contentType, pushedServices, pendingPushedServices, recordTypeLabel, originalSize
    }
}

// MARK: MainImage convenience initializers and mutators

extension MainImage {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(MainImage.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        id: String?? = nil,
        recordType: Int?? = nil,
        addedOn: Int?? = nil,
        updatedOn: Int?? = nil,
        workflowState: Int?? = nil,
        publishOn: Int?? = nil,
        authorID: String?? = nil,
        systemDataID: String?? = nil,
        systemDataVariants: String?? = nil,
        systemDataSourceType: SystemDataSourceType?? = nil,
        filename: String?? = nil,
        mediaFocalPoint: MediaFocalPoint?? = nil,
        colorData: ColorData?? = nil,
        urlID: String?? = nil,
        title: String?? = nil,
        body: JSONNull?? = nil,
        likeCount: Int?? = nil,
        commentCount: Int?? = nil,
        publicCommentCount: Int?? = nil,
        commentState: Int?? = nil,
        unsaved: Bool?? = nil,
        author: Author?? = nil,
        assetURL: URL?? = nil,
        contentType: ContentType?? = nil,
        pushedServices: LocalizedStrings?? = nil,
        pendingPushedServices: LocalizedStrings?? = nil,
        recordTypeLabel: String?? = nil,
        originalSize: String?? = nil
        ) -> MainImage {
        return MainImage(
            id: id ?? self.id,
            recordType: recordType ?? self.recordType,
            addedOn: addedOn ?? self.addedOn,
            updatedOn: updatedOn ?? self.updatedOn,
            workflowState: workflowState ?? self.workflowState,
            publishOn: publishOn ?? self.publishOn,
            authorID: authorID ?? self.authorID,
            systemDataID: systemDataID ?? self.systemDataID,
            systemDataVariants: systemDataVariants ?? self.systemDataVariants,
            systemDataSourceType: systemDataSourceType ?? self.systemDataSourceType,
            filename: filename ?? self.filename,
            mediaFocalPoint: mediaFocalPoint ?? self.mediaFocalPoint,
            colorData: colorData ?? self.colorData,
            urlID: urlID ?? self.urlID,
            title: title ?? self.title,
            body: body ?? self.body,
            likeCount: likeCount ?? self.likeCount,
            commentCount: commentCount ?? self.commentCount,
            publicCommentCount: publicCommentCount ?? self.publicCommentCount,
            commentState: commentState ?? self.commentState,
            unsaved: unsaved ?? self.unsaved,
            author: author ?? self.author,
            assetURL: assetURL ?? self.assetURL,
            contentType: contentType ?? self.contentType,
            pushedServices: pushedServices ?? self.pushedServices,
            pendingPushedServices: pendingPushedServices ?? self.pendingPushedServices,
            recordTypeLabel: recordTypeLabel ?? self.recordTypeLabel,
            originalSize: originalSize ?? self.originalSize
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Author
struct Author: Codable {
    let id, displayName, firstName, lastName: String?
    let avatarURL: URL?
    let avatarID: String?
    let websiteURL: String?
    let bio: String?
    var avatarAssetURL: String?
    
    enum CodingKeys: String, CodingKey {
        case id, displayName, firstName, lastName
        case avatarURL = "avatarUrl"
        case avatarID = "avatarId"
        case websiteURL = "websiteUrl"
        case bio
        case avatarAssetURL = "avatarAssetUrl"
    }
}

// MARK: Author convenience initializers and mutators

extension Author {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Author.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        id: String?? = nil,
        displayName: String?? = nil,
        firstName: String?? = nil,
        lastName: String?? = nil,
        avatarURL: URL?? = nil,
        avatarID: String?? = nil,
        websiteURL: String?? = nil,
        bio: String?? = nil,
        avatarAssetURL: String?? = nil
        ) -> Author {
        return Author(
            id: id ?? self.id,
            displayName: displayName ?? self.displayName,
            firstName: firstName ?? self.firstName,
            lastName: lastName ?? self.lastName,
            avatarURL: avatarURL ?? self.avatarURL,
            avatarID: avatarID ?? self.avatarID,
            websiteURL: websiteURL ?? self.websiteURL,
            bio: bio ?? self.bio,
            avatarAssetURL: avatarAssetURL ?? self.avatarAssetURL
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ColorData
struct ColorData: Codable {
    let topLeftAverage, topRightAverage, bottomLeftAverage, bottomRightAverage: String?
    let centerAverage, suggestedBgColor: String?
}

// MARK: ColorData convenience initializers and mutators

extension ColorData {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ColorData.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        topLeftAverage: String?? = nil,
        topRightAverage: String?? = nil,
        bottomLeftAverage: String?? = nil,
        bottomRightAverage: String?? = nil,
        centerAverage: String?? = nil,
        suggestedBgColor: String?? = nil
        ) -> ColorData {
        return ColorData(
            topLeftAverage: topLeftAverage ?? self.topLeftAverage,
            topRightAverage: topRightAverage ?? self.topRightAverage,
            bottomLeftAverage: bottomLeftAverage ?? self.bottomLeftAverage,
            bottomRightAverage: bottomRightAverage ?? self.bottomRightAverage,
            centerAverage: centerAverage ?? self.centerAverage,
            suggestedBgColor: suggestedBgColor ?? self.suggestedBgColor
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum ContentType: String, Codable {
    case imageJPEG = "image/jpeg"
    case imagePNG = "image/png"
}

// MARK: - MediaFocalPoint
struct MediaFocalPoint: Codable {
    let x, y: Double?
    let source: Int?
}

// MARK: MediaFocalPoint convenience initializers and mutators

extension MediaFocalPoint {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(MediaFocalPoint.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        x: Double?? = nil,
        y: Double?? = nil,
        source: Int?? = nil
        ) -> MediaFocalPoint {
        return MediaFocalPoint(
            x: x ?? self.x,
            y: y ?? self.y,
            source: source ?? self.source
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - LocalizedStrings
struct LocalizedStrings: Codable {
}

// MARK: LocalizedStrings convenience initializers and mutators

extension LocalizedStrings {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(LocalizedStrings.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        ) -> LocalizedStrings {
        return LocalizedStrings(
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum SystemDataSourceType: String, Codable {
    case jpg = "JPG"
    case png = "PNG"
}

// MARK: - Video
struct Video: Codable {
    let playbackSpeed, zoom: Int?
}

// MARK: Video convenience initializers and mutators

extension Video {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Video.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        playbackSpeed: Int?? = nil,
        zoom: Int?? = nil
        ) -> Video {
        return Video(
            playbackSpeed: playbackSpeed ?? self.playbackSpeed,
            zoom: zoom ?? self.zoom
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Item
struct Item: Codable {
    let id: String?
    let collectionID: ID?
    let recordType, addedOn, updatedOn: String?
    let starred, passthrough: Bool?
    let tags: [JSONAny]?
    let categories: [Category]?
    let workflowState, publishOn: Int?
    let authorID, systemDataID, systemDataVariants: String?
    let systemDataSourceType: SystemDataSourceType?
    let filename: String?
    let mediaFocalPoint: MediaFocalPoint?
    let colorData: ColorData?
    let urlID, title, sourceURL, body: String?
    let excerpt: String?
    let location: ItemLocation?
    let customContent: JSONNull?
    let likeCount, commentCount, publicCommentCount, commentState: Int?
    let unsaved: Bool?
    let author: Author?
    let fullURL: String?
    let contentType: ContentType?
    let items: [JSONAny]?
    let pushedServices: PushedServices?
    let pendingPushedServices: LocalizedStrings?
    let recordTypeLabel: RecordTypeLabel?
    let originalSize: String?
    var featurePhoto: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case collectionID = "collectionId"
        case recordType, addedOn, updatedOn, starred, passthrough, tags, categories, workflowState, publishOn
        case authorID = "authorId"
        case systemDataID = "systemDataId"
        case systemDataVariants, systemDataSourceType, filename, mediaFocalPoint, colorData
        case urlID = "urlId"
        case title
        case sourceURL = "sourceUrl"
        case body, excerpt, location, customContent, likeCount, commentCount, publicCommentCount, commentState, unsaved, author
        case fullURL = "fullUrl"
        case contentType, items, pushedServices, pendingPushedServices, recordTypeLabel, originalSize
        case featurePhoto = "assetUrl"
    }
}

// MARK: Item convenience initializers and mutators

extension Item {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Item.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        id: String?? = nil,
        collectionID: ID?? = nil,
        recordType: String?? = nil,
        addedOn: String?? = nil,
        updatedOn: String?? = nil,
        starred: Bool?? = nil,
        passthrough: Bool?? = nil,
        tags: [JSONAny]?? = nil,
        categories: [Category]?? = nil,
        workflowState: Int?? = nil,
        publishOn: Int?? = nil,
        authorID: String?? = nil,
        systemDataID: String?? = nil,
        systemDataVariants: String?? = nil,
        systemDataSourceType: SystemDataSourceType?? = nil,
        filename: String?? = nil,
        mediaFocalPoint: MediaFocalPoint?? = nil,
        colorData: ColorData?? = nil,
        urlID: String?? = nil,
        title: String?? = nil,
        sourceURL: String?? = nil,
        body: String?? = nil,
        excerpt: String?? = nil,
        location: ItemLocation?? = nil,
        customContent: JSONNull?? = nil,
        likeCount: Int?? = nil,
        commentCount: Int?? = nil,
        publicCommentCount: Int?? = nil,
        commentState: Int?? = nil,
        unsaved: Bool?? = nil,
        author: Author?? = nil,
        fullURL: String?? = nil,
        contentType: ContentType?? = nil,
        items: [JSONAny]?? = nil,
        pushedServices: PushedServices?? = nil,
        pendingPushedServices: LocalizedStrings?? = nil,
        recordTypeLabel: RecordTypeLabel?? = nil,
        originalSize: String?? = nil,
        featurePhoto: String?? = nil
        ) -> Item {
        return Item(
            id: id ?? self.id,
            collectionID: collectionID ?? self.collectionID,
            recordType: recordType ?? self.recordType,
            addedOn: addedOn ?? self.addedOn,
            updatedOn: updatedOn ?? self.updatedOn,
            starred: starred ?? self.starred,
            passthrough: passthrough ?? self.passthrough,
            tags: tags ?? self.tags,
            categories: categories ?? self.categories,
            workflowState: workflowState ?? self.workflowState,
            publishOn: publishOn ?? self.publishOn,
            authorID: authorID ?? self.authorID,
            systemDataID: systemDataID ?? self.systemDataID,
            systemDataVariants: systemDataVariants ?? self.systemDataVariants,
            systemDataSourceType: systemDataSourceType ?? self.systemDataSourceType,
            filename: filename ?? self.filename,
            mediaFocalPoint: mediaFocalPoint ?? self.mediaFocalPoint,
            colorData: colorData ?? self.colorData,
            urlID: urlID ?? self.urlID,
            title: title ?? self.title,
            sourceURL: sourceURL ?? self.sourceURL,
            body: body ?? self.body,
            excerpt: excerpt ?? self.excerpt,
            location: location ?? self.location,
            customContent: customContent ?? self.customContent,
            likeCount: likeCount ?? self.likeCount,
            commentCount: commentCount ?? self.commentCount,
            publicCommentCount: publicCommentCount ?? self.publicCommentCount,
            commentState: commentState ?? self.commentState,
            unsaved: unsaved ?? self.unsaved,
            author: author ?? self.author,
            fullURL: fullURL ?? self.fullURL,
            contentType: contentType ?? self.contentType,
            items: items ?? self.items,
            pushedServices: pushedServices ?? self.pushedServices,
            pendingPushedServices: pendingPushedServices ?? self.pendingPushedServices,
            recordTypeLabel: recordTypeLabel ?? self.recordTypeLabel,
            originalSize: originalSize ?? self.originalSize,
            featurePhoto: featurePhoto ?? self.featurePhoto
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Category: String, Codable {
    case advice = "Advice"
    case fashion = "Fashion"
    case stories = "Stories"
}

// MARK: - ItemLocation
struct ItemLocation: Codable {
    let mapZoom: Int?
    let mapLat, mapLng, markerLat, markerLng: Double?
}

// MARK: ItemLocation convenience initializers and mutators

extension ItemLocation {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ItemLocation.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        mapZoom: Int?? = nil,
        mapLat: Double?? = nil,
        mapLng: Double?? = nil,
        markerLat: Double?? = nil,
        markerLng: Double?? = nil
        ) -> ItemLocation {
        return ItemLocation(
            mapZoom: mapZoom ?? self.mapZoom,
            mapLat: mapLat ?? self.mapLat,
            mapLng: mapLng ?? self.mapLng,
            markerLat: markerLat ?? self.markerLat,
            markerLng: markerLng ?? self.markerLng
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - PushedServices
struct PushedServices: Codable {
    let twitter347240905: Bool?
    
    enum CodingKeys: String, CodingKey {
        case twitter347240905 = "twitter-347240905"
    }
}

// MARK: PushedServices convenience initializers and mutators

extension PushedServices {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(PushedServices.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        twitter347240905: Bool?? = nil
        ) -> PushedServices {
        return PushedServices(
            twitter347240905: twitter347240905 ?? self.twitter347240905
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum RecordTypeLabel: String, Codable {
    case text = "text"
}

// MARK: - Pagination
struct Pagination: Codable {
    let nextPage: Bool?
    let nextPageOffset: Int?
    let nextPageURL: String?
    let pageSize: Int?
    
    enum CodingKeys: String, CodingKey {
        case nextPage, nextPageOffset
        case nextPageURL = "nextPageUrl"
        case pageSize
    }
}

// MARK: Pagination convenience initializers and mutators

extension Pagination {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Pagination.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        nextPage: Bool?? = nil,
        nextPageOffset: Int?? = nil,
        nextPageURL: String?? = nil,
        pageSize: Int?? = nil
        ) -> Pagination {
        return Pagination(
            nextPage: nextPage ?? self.nextPage,
            nextPageOffset: nextPageOffset ?? self.nextPageOffset,
            nextPageURL: nextPageURL ?? self.nextPageURL,
            pageSize: pageSize ?? self.pageSize
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ShareButtons
struct ShareButtons: Codable {
    let twitter, facebook, pinterest, google: Bool?
}

// MARK: ShareButtons convenience initializers and mutators

extension ShareButtons {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ShareButtons.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        twitter: Bool?? = nil,
        facebook: Bool?? = nil,
        pinterest: Bool?? = nil,
        google: Bool?? = nil
        ) -> ShareButtons {
        return ShareButtons(
            twitter: twitter ?? self.twitter,
            facebook: facebook ?? self.facebook,
            pinterest: pinterest ?? self.pinterest,
            google: google ?? self.google
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ShoppingCart
struct ShoppingCart: Codable {
    let websiteID: String?
    let created: Int?
    let entries, shippingOptions: [JSONAny]?
    let shippingLocation: LocalizedStrings?
    let taxLineItems, coupons, promoCodes, appliedGiftCards: [JSONAny]?
    let cartType: Int?
    let validCoupons, invalidCoupons: [JSONAny]?
    let subtotalCents, taxCents, shippingCostCents, discountCents: Int?
    let giftCardRedemptionTotalCents, grandTotalCents, amountDueCents, totalQuantity: Int?
    let purelyDigital, hasDigital, requiresShipping: Bool?
    
    enum CodingKeys: String, CodingKey {
        case websiteID = "websiteId"
        case created, entries, shippingOptions, shippingLocation, taxLineItems, coupons, promoCodes, appliedGiftCards, cartType, validCoupons, invalidCoupons, subtotalCents, taxCents, shippingCostCents, discountCents, giftCardRedemptionTotalCents, grandTotalCents, amountDueCents, totalQuantity, purelyDigital, hasDigital, requiresShipping
    }
}

// MARK: ShoppingCart convenience initializers and mutators

extension ShoppingCart {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ShoppingCart.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        websiteID: String?? = nil,
        created: Int?? = nil,
        entries: [JSONAny]?? = nil,
        shippingOptions: [JSONAny]?? = nil,
        shippingLocation: LocalizedStrings?? = nil,
        taxLineItems: [JSONAny]?? = nil,
        coupons: [JSONAny]?? = nil,
        promoCodes: [JSONAny]?? = nil,
        appliedGiftCards: [JSONAny]?? = nil,
        cartType: Int?? = nil,
        validCoupons: [JSONAny]?? = nil,
        invalidCoupons: [JSONAny]?? = nil,
        subtotalCents: Int?? = nil,
        taxCents: Int?? = nil,
        shippingCostCents: Int?? = nil,
        discountCents: Int?? = nil,
        giftCardRedemptionTotalCents: Int?? = nil,
        grandTotalCents: Int?? = nil,
        amountDueCents: Int?? = nil,
        totalQuantity: Int?? = nil,
        purelyDigital: Bool?? = nil,
        hasDigital: Bool?? = nil,
        requiresShipping: Bool?? = nil
        ) -> ShoppingCart {
        return ShoppingCart(
            websiteID: websiteID ?? self.websiteID,
            created: created ?? self.created,
            entries: entries ?? self.entries,
            shippingOptions: shippingOptions ?? self.shippingOptions,
            shippingLocation: shippingLocation ?? self.shippingLocation,
            taxLineItems: taxLineItems ?? self.taxLineItems,
            coupons: coupons ?? self.coupons,
            promoCodes: promoCodes ?? self.promoCodes,
            appliedGiftCards: appliedGiftCards ?? self.appliedGiftCards,
            cartType: cartType ?? self.cartType,
            validCoupons: validCoupons ?? self.validCoupons,
            invalidCoupons: invalidCoupons ?? self.invalidCoupons,
            subtotalCents: subtotalCents ?? self.subtotalCents,
            taxCents: taxCents ?? self.taxCents,
            shippingCostCents: shippingCostCents ?? self.shippingCostCents,
            discountCents: discountCents ?? self.discountCents,
            giftCardRedemptionTotalCents: giftCardRedemptionTotalCents ?? self.giftCardRedemptionTotalCents,
            grandTotalCents: grandTotalCents ?? self.grandTotalCents,
            amountDueCents: amountDueCents ?? self.amountDueCents,
            totalQuantity: totalQuantity ?? self.totalQuantity,
            purelyDigital: purelyDigital ?? self.purelyDigital,
            hasDigital: hasDigital ?? self.hasDigital,
            requiresShipping: requiresShipping ?? self.requiresShipping
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Template
struct Template: Codable {
    let mobileStylesEnabled: Bool?
}

// MARK: Template convenience initializers and mutators

extension Template {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Template.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        mobileStylesEnabled: Bool?? = nil
        ) -> Template {
        return Template(
            mobileStylesEnabled: mobileStylesEnabled ?? self.mobileStylesEnabled
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - UserAccountsContext
struct UserAccountsContext: Codable {
    let showSignInLink: Bool?
}

// MARK: UserAccountsContext convenience initializers and mutators

extension UserAccountsContext {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UserAccountsContext.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        showSignInLink: Bool?? = nil
        ) -> UserAccountsContext {
        return UserAccountsContext(
            showSignInLink: showSignInLink ?? self.showSignInLink
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Website
struct Website: Codable {
    let id, identifier: String?
    let websiteType, contentModifiedOn: Int?
    let cloneable: Bool?
    let siteStatus: LocalizedStrings?
    let language, timeZone: String?
    let machineTimeZoneOffset, timeZoneOffset: Int?
    let timeZoneAbbr, siteTitle, siteTagLine, siteDescription: String?
    let location: ContactLocationClass?
    let logoImageID, socialLogoImageID: String?
    let shareButtonOptions: [String: Bool]?
    let logoImageURL, socialLogoImageURL: String?
    let authenticURL, internalURL, baseURL: String?
    let primaryDomain: String?
    let sslSetting: Int?
    let isHstsEnabled: Bool?
    let socialAccounts: [SocialAccount]?
    let typekitID: String?
    let statsMigrated, imageMetadataProcessingEnabled: Bool?
    let screenshotID: String?
    let showOwnerLogin: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id, identifier, websiteType, contentModifiedOn, cloneable, siteStatus, language, timeZone, machineTimeZoneOffset, timeZoneOffset, timeZoneAbbr, siteTitle, siteTagLine, siteDescription, location
        case logoImageID = "logoImageId"
        case socialLogoImageID = "socialLogoImageId"
        case shareButtonOptions
        case logoImageURL = "logoImageUrl"
        case socialLogoImageURL = "socialLogoImageUrl"
        case authenticURL = "authenticUrl"
        case internalURL = "internalUrl"
        case baseURL = "baseUrl"
        case primaryDomain, sslSetting, isHstsEnabled, socialAccounts
        case typekitID = "typekitId"
        case statsMigrated, imageMetadataProcessingEnabled
        case screenshotID = "screenshotId"
        case showOwnerLogin
    }
}

// MARK: Website convenience initializers and mutators

extension Website {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Website.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        id: String?? = nil,
        identifier: String?? = nil,
        websiteType: Int?? = nil,
        contentModifiedOn: Int?? = nil,
        cloneable: Bool?? = nil,
        siteStatus: LocalizedStrings?? = nil,
        language: String?? = nil,
        timeZone: String?? = nil,
        machineTimeZoneOffset: Int?? = nil,
        timeZoneOffset: Int?? = nil,
        timeZoneAbbr: String?? = nil,
        siteTitle: String?? = nil,
        siteTagLine: String?? = nil,
        siteDescription: String?? = nil,
        location: ContactLocationClass?? = nil,
        logoImageID: String?? = nil,
        socialLogoImageID: String?? = nil,
        shareButtonOptions: [String: Bool]?? = nil,
        logoImageURL: String?? = nil,
        socialLogoImageURL: String?? = nil,
        authenticURL: String?? = nil,
        internalURL: String?? = nil,
        baseURL: String?? = nil,
        primaryDomain: String?? = nil,
        sslSetting: Int?? = nil,
        isHstsEnabled: Bool?? = nil,
        socialAccounts: [SocialAccount]?? = nil,
        typekitID: String?? = nil,
        statsMigrated: Bool?? = nil,
        imageMetadataProcessingEnabled: Bool?? = nil,
        screenshotID: String?? = nil,
        showOwnerLogin: Bool?? = nil
        ) -> Website {
        return Website(
            id: id ?? self.id,
            identifier: identifier ?? self.identifier,
            websiteType: websiteType ?? self.websiteType,
            contentModifiedOn: contentModifiedOn ?? self.contentModifiedOn,
            cloneable: cloneable ?? self.cloneable,
            siteStatus: siteStatus ?? self.siteStatus,
            language: language ?? self.language,
            timeZone: timeZone ?? self.timeZone,
            machineTimeZoneOffset: machineTimeZoneOffset ?? self.machineTimeZoneOffset,
            timeZoneOffset: timeZoneOffset ?? self.timeZoneOffset,
            timeZoneAbbr: timeZoneAbbr ?? self.timeZoneAbbr,
            siteTitle: siteTitle ?? self.siteTitle,
            siteTagLine: siteTagLine ?? self.siteTagLine,
            siteDescription: siteDescription ?? self.siteDescription,
            location: location ?? self.location,
            logoImageID: logoImageID ?? self.logoImageID,
            socialLogoImageID: socialLogoImageID ?? self.socialLogoImageID,
            shareButtonOptions: shareButtonOptions ?? self.shareButtonOptions,
            logoImageURL: logoImageURL ?? self.logoImageURL,
            socialLogoImageURL: socialLogoImageURL ?? self.socialLogoImageURL,
            authenticURL: authenticURL ?? self.authenticURL,
            internalURL: internalURL ?? self.internalURL,
            baseURL: baseURL ?? self.baseURL,
            primaryDomain: primaryDomain ?? self.primaryDomain,
            sslSetting: sslSetting ?? self.sslSetting,
            isHstsEnabled: isHstsEnabled ?? self.isHstsEnabled,
            socialAccounts: socialAccounts ?? self.socialAccounts,
            typekitID: typekitID ?? self.typekitID,
            statsMigrated: statsMigrated ?? self.statsMigrated,
            imageMetadataProcessingEnabled: imageMetadataProcessingEnabled ?? self.imageMetadataProcessingEnabled,
            screenshotID: screenshotID ?? self.screenshotID,
            showOwnerLogin: showOwnerLogin ?? self.showOwnerLogin
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ContactLocationClass
struct ContactLocationClass: Codable {
    let addressLine1, addressLine2, addressCountry: String?
}

// MARK: ContactLocationClass convenience initializers and mutators

extension ContactLocationClass {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ContactLocationClass.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        addressLine1: String?? = nil,
        addressLine2: String?? = nil,
        addressCountry: String?? = nil
        ) -> ContactLocationClass {
        return ContactLocationClass(
            addressLine1: addressLine1 ?? self.addressLine1,
            addressLine2: addressLine2 ?? self.addressLine2,
            addressCountry: addressCountry ?? self.addressCountry
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - SocialAccount
struct SocialAccount: Codable {
    let serviceID: Int?
    let userID, screenname: String?
    let addedOn: Int?
    let profileURL: String?
    let iconURL: String?
    let metaData: MetaData?
    let iconEnabled: Bool?
    let serviceName, userName, collectionID: String?
    
    enum CodingKeys: String, CodingKey {
        case serviceID = "serviceId"
        case userID = "userId"
        case screenname, addedOn
        case profileURL = "profileUrl"
        case iconURL = "iconUrl"
        case metaData, iconEnabled, serviceName, userName
        case collectionID = "collectionId"
    }
}

// MARK: SocialAccount convenience initializers and mutators

extension SocialAccount {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SocialAccount.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        serviceID: Int?? = nil,
        userID: String?? = nil,
        screenname: String?? = nil,
        addedOn: Int?? = nil,
        profileURL: String?? = nil,
        iconURL: String?? = nil,
        metaData: MetaData?? = nil,
        iconEnabled: Bool?? = nil,
        serviceName: String?? = nil,
        userName: String?? = nil,
        collectionID: String?? = nil
        ) -> SocialAccount {
        return SocialAccount(
            serviceID: serviceID ?? self.serviceID,
            userID: userID ?? self.userID,
            screenname: screenname ?? self.screenname,
            addedOn: addedOn ?? self.addedOn,
            profileURL: profileURL ?? self.profileURL,
            iconURL: iconURL ?? self.iconURL,
            metaData: metaData ?? self.metaData,
            iconEnabled: iconEnabled ?? self.iconEnabled,
            serviceName: serviceName ?? self.serviceName,
            userName: userName ?? self.userName,
            collectionID: collectionID ?? self.collectionID
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - MetaData
struct MetaData: Codable {
    let service: String?
}

// MARK: MetaData convenience initializers and mutators

extension MetaData {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(MetaData.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        service: String?? = nil
        ) -> MetaData {
        return MetaData(
            service: service ?? self.service
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - WebsiteSettings
struct WebsiteSettings: Codable {
    let id, websiteID: String?
    let subjects: [JSONAny]?
    let country, state: String?
    let simpleLikingEnabled: Bool?
    let mobileInfoBarSettings: MobileInfoBarSettings?
    let announcementBarSettings: AnnouncementBarSettings?
    let popupOverlaySettings: PopupOverlaySettings?
    let commentLikesAllowed, commentAnonAllowed, commentThreaded, commentApprovalRequired: Bool?
    let commentAvatarsOn: Bool?
    let commentSortType, commentFlagThreshold: Int?
    let commentFlagsAllowed, commentEnableByDefault: Bool?
    let commentDisableAfterDaysDefault: Int?
    let disqusShortname, collectionTitleFormat, itemTitleFormat: String?
    let commentsEnabled: Bool?
    let businessHours: BusinessHours?
    let storeSettings: StoreSettings?
    let useEscapeKeyToLogin: Bool?
    let ssBadgeType, ssBadgePosition, ssBadgeVisibility, ssBadgeDevices: Int?
    let pinterestOverlayOptions: PinterestOverlayOptions?
    let ampEnabled, seoHidden: Bool?
    let userAccountsSettings: UserAccountsSettings?
    let contactEmail, contactPhoneNumber: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case websiteID = "websiteId"
        case subjects, country, state, simpleLikingEnabled, mobileInfoBarSettings, announcementBarSettings, popupOverlaySettings, commentLikesAllowed, commentAnonAllowed, commentThreaded, commentApprovalRequired, commentAvatarsOn, commentSortType, commentFlagThreshold, commentFlagsAllowed, commentEnableByDefault, commentDisableAfterDaysDefault, disqusShortname, collectionTitleFormat, itemTitleFormat, commentsEnabled, businessHours, storeSettings, useEscapeKeyToLogin, ssBadgeType, ssBadgePosition, ssBadgeVisibility, ssBadgeDevices, pinterestOverlayOptions, ampEnabled, seoHidden, userAccountsSettings, contactEmail, contactPhoneNumber
    }
}

// MARK: WebsiteSettings convenience initializers and mutators

extension WebsiteSettings {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(WebsiteSettings.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        id: String?? = nil,
        websiteID: String?? = nil,
        subjects: [JSONAny]?? = nil,
        country: String?? = nil,
        state: String?? = nil,
        simpleLikingEnabled: Bool?? = nil,
        mobileInfoBarSettings: MobileInfoBarSettings?? = nil,
        announcementBarSettings: AnnouncementBarSettings?? = nil,
        popupOverlaySettings: PopupOverlaySettings?? = nil,
        commentLikesAllowed: Bool?? = nil,
        commentAnonAllowed: Bool?? = nil,
        commentThreaded: Bool?? = nil,
        commentApprovalRequired: Bool?? = nil,
        commentAvatarsOn: Bool?? = nil,
        commentSortType: Int?? = nil,
        commentFlagThreshold: Int?? = nil,
        commentFlagsAllowed: Bool?? = nil,
        commentEnableByDefault: Bool?? = nil,
        commentDisableAfterDaysDefault: Int?? = nil,
        disqusShortname: String?? = nil,
        collectionTitleFormat: String?? = nil,
        itemTitleFormat: String?? = nil,
        commentsEnabled: Bool?? = nil,
        businessHours: BusinessHours?? = nil,
        storeSettings: StoreSettings?? = nil,
        useEscapeKeyToLogin: Bool?? = nil,
        ssBadgeType: Int?? = nil,
        ssBadgePosition: Int?? = nil,
        ssBadgeVisibility: Int?? = nil,
        ssBadgeDevices: Int?? = nil,
        pinterestOverlayOptions: PinterestOverlayOptions?? = nil,
        ampEnabled: Bool?? = nil,
        seoHidden: Bool?? = nil,
        userAccountsSettings: UserAccountsSettings?? = nil,
        contactEmail: String?? = nil,
        contactPhoneNumber: String?? = nil
        ) -> WebsiteSettings {
        return WebsiteSettings(
            id: id ?? self.id,
            websiteID: websiteID ?? self.websiteID,
            subjects: subjects ?? self.subjects,
            country: country ?? self.country,
            state: state ?? self.state,
            simpleLikingEnabled: simpleLikingEnabled ?? self.simpleLikingEnabled,
            mobileInfoBarSettings: mobileInfoBarSettings ?? self.mobileInfoBarSettings,
            announcementBarSettings: announcementBarSettings ?? self.announcementBarSettings,
            popupOverlaySettings: popupOverlaySettings ?? self.popupOverlaySettings,
            commentLikesAllowed: commentLikesAllowed ?? self.commentLikesAllowed,
            commentAnonAllowed: commentAnonAllowed ?? self.commentAnonAllowed,
            commentThreaded: commentThreaded ?? self.commentThreaded,
            commentApprovalRequired: commentApprovalRequired ?? self.commentApprovalRequired,
            commentAvatarsOn: commentAvatarsOn ?? self.commentAvatarsOn,
            commentSortType: commentSortType ?? self.commentSortType,
            commentFlagThreshold: commentFlagThreshold ?? self.commentFlagThreshold,
            commentFlagsAllowed: commentFlagsAllowed ?? self.commentFlagsAllowed,
            commentEnableByDefault: commentEnableByDefault ?? self.commentEnableByDefault,
            commentDisableAfterDaysDefault: commentDisableAfterDaysDefault ?? self.commentDisableAfterDaysDefault,
            disqusShortname: disqusShortname ?? self.disqusShortname,
            collectionTitleFormat: collectionTitleFormat ?? self.collectionTitleFormat,
            itemTitleFormat: itemTitleFormat ?? self.itemTitleFormat,
            commentsEnabled: commentsEnabled ?? self.commentsEnabled,
            businessHours: businessHours ?? self.businessHours,
            storeSettings: storeSettings ?? self.storeSettings,
            useEscapeKeyToLogin: useEscapeKeyToLogin ?? self.useEscapeKeyToLogin,
            ssBadgeType: ssBadgeType ?? self.ssBadgeType,
            ssBadgePosition: ssBadgePosition ?? self.ssBadgePosition,
            ssBadgeVisibility: ssBadgeVisibility ?? self.ssBadgeVisibility,
            ssBadgeDevices: ssBadgeDevices ?? self.ssBadgeDevices,
            pinterestOverlayOptions: pinterestOverlayOptions ?? self.pinterestOverlayOptions,
            ampEnabled: ampEnabled ?? self.ampEnabled,
            seoHidden: seoHidden ?? self.seoHidden,
            userAccountsSettings: userAccountsSettings ?? self.userAccountsSettings,
            contactEmail: contactEmail ?? self.contactEmail,
            contactPhoneNumber: contactPhoneNumber ?? self.contactPhoneNumber
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - AnnouncementBarSettings
struct AnnouncementBarSettings: Codable {
    let style: Int?
    let text: String?
    let clickthroughURL: ClickthroughURL?
    
    enum CodingKeys: String, CodingKey {
        case style, text
        case clickthroughURL = "clickthroughUrl"
    }
}

// MARK: AnnouncementBarSettings convenience initializers and mutators

extension AnnouncementBarSettings {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AnnouncementBarSettings.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        style: Int?? = nil,
        text: String?? = nil,
        clickthroughURL: ClickthroughURL?? = nil
        ) -> AnnouncementBarSettings {
        return AnnouncementBarSettings(
            style: style ?? self.style,
            text: text ?? self.text,
            clickthroughURL: clickthroughURL ?? self.clickthroughURL
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ClickthroughURL
struct ClickthroughURL: Codable {
    let url: String?
    let newWindow: Bool?
}

// MARK: ClickthroughURL convenience initializers and mutators

extension ClickthroughURL {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ClickthroughURL.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        url: String?? = nil,
        newWindow: Bool?? = nil
        ) -> ClickthroughURL {
        return ClickthroughURL(
            url: url ?? self.url,
            newWindow: newWindow ?? self.newWindow
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - BusinessHours
struct BusinessHours: Codable {
    let monday, tuesday, wednesday, thursday: Day?
    let friday, saturday, sunday: Day?
}

// MARK: BusinessHours convenience initializers and mutators

extension BusinessHours {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(BusinessHours.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        monday: Day?? = nil,
        tuesday: Day?? = nil,
        wednesday: Day?? = nil,
        thursday: Day?? = nil,
        friday: Day?? = nil,
        saturday: Day?? = nil,
        sunday: Day?? = nil
        ) -> BusinessHours {
        return BusinessHours(
            monday: monday ?? self.monday,
            tuesday: tuesday ?? self.tuesday,
            wednesday: wednesday ?? self.wednesday,
            thursday: thursday ?? self.thursday,
            friday: friday ?? self.friday,
            saturday: saturday ?? self.saturday,
            sunday: sunday ?? self.sunday
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Day
struct Day: Codable {
    let text: String?
    let ranges: [LocalizedStrings]?
}

// MARK: Day convenience initializers and mutators

extension Day {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Day.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        text: String?? = nil,
        ranges: [LocalizedStrings]?? = nil
        ) -> Day {
        return Day(
            text: text ?? self.text,
            ranges: ranges ?? self.ranges
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - MobileInfoBarSettings
struct MobileInfoBarSettings: Codable {
    let isContactEmailEnabled, isContactPhoneNumberEnabled, isLocationEnabled, isBusinessHoursEnabled: Bool?
}

// MARK: MobileInfoBarSettings convenience initializers and mutators

extension MobileInfoBarSettings {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(MobileInfoBarSettings.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        isContactEmailEnabled: Bool?? = nil,
        isContactPhoneNumberEnabled: Bool?? = nil,
        isLocationEnabled: Bool?? = nil,
        isBusinessHoursEnabled: Bool?? = nil
        ) -> MobileInfoBarSettings {
        return MobileInfoBarSettings(
            isContactEmailEnabled: isContactEmailEnabled ?? self.isContactEmailEnabled,
            isContactPhoneNumberEnabled: isContactPhoneNumberEnabled ?? self.isContactPhoneNumberEnabled,
            isLocationEnabled: isLocationEnabled ?? self.isLocationEnabled,
            isBusinessHoursEnabled: isBusinessHoursEnabled ?? self.isBusinessHoursEnabled
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - PinterestOverlayOptions
struct PinterestOverlayOptions: Codable {
    let mode, size, shape, color: String?
}

// MARK: PinterestOverlayOptions convenience initializers and mutators

extension PinterestOverlayOptions {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(PinterestOverlayOptions.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        mode: String?? = nil,
        size: String?? = nil,
        shape: String?? = nil,
        color: String?? = nil
        ) -> PinterestOverlayOptions {
        return PinterestOverlayOptions(
            mode: mode ?? self.mode,
            size: size ?? self.size,
            shape: shape ?? self.shape,
            color: color ?? self.color
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - PopupOverlaySettings
struct PopupOverlaySettings: Codable {
    let style: Int?
    let showOnScroll: Bool?
    let scrollPercentage: Int?
    let showOnTimer: Bool?
    let timerDelay: Int?
    let showUntilSignup: Bool?
    let displayFrequency: Int?
    let enableMobile: Bool?
    let enabledPages: [JSONAny]?
    let showOnAllPages: Bool?
    let version: Int?
}

// MARK: PopupOverlaySettings convenience initializers and mutators

extension PopupOverlaySettings {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(PopupOverlaySettings.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        style: Int?? = nil,
        showOnScroll: Bool?? = nil,
        scrollPercentage: Int?? = nil,
        showOnTimer: Bool?? = nil,
        timerDelay: Int?? = nil,
        showUntilSignup: Bool?? = nil,
        displayFrequency: Int?? = nil,
        enableMobile: Bool?? = nil,
        enabledPages: [JSONAny]?? = nil,
        showOnAllPages: Bool?? = nil,
        version: Int?? = nil
        ) -> PopupOverlaySettings {
        return PopupOverlaySettings(
            style: style ?? self.style,
            showOnScroll: showOnScroll ?? self.showOnScroll,
            scrollPercentage: scrollPercentage ?? self.scrollPercentage,
            showOnTimer: showOnTimer ?? self.showOnTimer,
            timerDelay: timerDelay ?? self.timerDelay,
            showUntilSignup: showUntilSignup ?? self.showUntilSignup,
            displayFrequency: displayFrequency ?? self.displayFrequency,
            enableMobile: enableMobile ?? self.enableMobile,
            enabledPages: enabledPages ?? self.enabledPages,
            showOnAllPages: showOnAllPages ?? self.showOnAllPages,
            version: version ?? self.version
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - StoreSettings
struct StoreSettings: Codable {
    let returnPolicy, termsOfService, privacyPolicy: JSONNull?
    let paymentSettings: PaymentSettings?
    let expressCheckout: Bool?
    let continueShoppingLinkURL: String?
    let useLightCart, showNoteField: Bool?
    let shippingCountryDefaultValue: String?
    let billToShippingDefaultValue, showShippingPhoneNumber, isShippingPhoneRequired, showBillingPhoneNumber: Bool?
    let isBillingPhoneRequired: Bool?
    let currenciesSupported: [String]?
    let defaultCurrency, selectedCurrency: String?
    let measurementStandard: Int?
    let showCustomCheckoutForm, enableMailingListOptInByDefault: Bool?
    let contactLocation: ContactLocationClass?
    let businessName: String?
    let sameAsRetailLocation: Bool?
    let businessID: String?
    let merchandisingSettings: MerchandisingSettings?
    let isLive, multipleQuantityAllowedForServices: Bool?
    
    enum CodingKeys: String, CodingKey {
        case returnPolicy, termsOfService, privacyPolicy, paymentSettings, expressCheckout
        case continueShoppingLinkURL = "continueShoppingLinkUrl"
        case useLightCart, showNoteField, shippingCountryDefaultValue, billToShippingDefaultValue, showShippingPhoneNumber, isShippingPhoneRequired, showBillingPhoneNumber, isBillingPhoneRequired, currenciesSupported, defaultCurrency, selectedCurrency, measurementStandard, showCustomCheckoutForm, enableMailingListOptInByDefault, contactLocation, businessName, sameAsRetailLocation
        case businessID = "businessId"
        case merchandisingSettings, isLive, multipleQuantityAllowedForServices
    }
}

// MARK: StoreSettings convenience initializers and mutators

extension StoreSettings {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(StoreSettings.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        returnPolicy: JSONNull?? = nil,
        termsOfService: JSONNull?? = nil,
        privacyPolicy: JSONNull?? = nil,
        paymentSettings: PaymentSettings?? = nil,
        expressCheckout: Bool?? = nil,
        continueShoppingLinkURL: String?? = nil,
        useLightCart: Bool?? = nil,
        showNoteField: Bool?? = nil,
        shippingCountryDefaultValue: String?? = nil,
        billToShippingDefaultValue: Bool?? = nil,
        showShippingPhoneNumber: Bool?? = nil,
        isShippingPhoneRequired: Bool?? = nil,
        showBillingPhoneNumber: Bool?? = nil,
        isBillingPhoneRequired: Bool?? = nil,
        currenciesSupported: [String]?? = nil,
        defaultCurrency: String?? = nil,
        selectedCurrency: String?? = nil,
        measurementStandard: Int?? = nil,
        showCustomCheckoutForm: Bool?? = nil,
        enableMailingListOptInByDefault: Bool?? = nil,
        contactLocation: ContactLocationClass?? = nil,
        businessName: String?? = nil,
        sameAsRetailLocation: Bool?? = nil,
        businessID: String?? = nil,
        merchandisingSettings: MerchandisingSettings?? = nil,
        isLive: Bool?? = nil,
        multipleQuantityAllowedForServices: Bool?? = nil
        ) -> StoreSettings {
        return StoreSettings(
            returnPolicy: returnPolicy ?? self.returnPolicy,
            termsOfService: termsOfService ?? self.termsOfService,
            privacyPolicy: privacyPolicy ?? self.privacyPolicy,
            paymentSettings: paymentSettings ?? self.paymentSettings,
            expressCheckout: expressCheckout ?? self.expressCheckout,
            continueShoppingLinkURL: continueShoppingLinkURL ?? self.continueShoppingLinkURL,
            useLightCart: useLightCart ?? self.useLightCart,
            showNoteField: showNoteField ?? self.showNoteField,
            shippingCountryDefaultValue: shippingCountryDefaultValue ?? self.shippingCountryDefaultValue,
            billToShippingDefaultValue: billToShippingDefaultValue ?? self.billToShippingDefaultValue,
            showShippingPhoneNumber: showShippingPhoneNumber ?? self.showShippingPhoneNumber,
            isShippingPhoneRequired: isShippingPhoneRequired ?? self.isShippingPhoneRequired,
            showBillingPhoneNumber: showBillingPhoneNumber ?? self.showBillingPhoneNumber,
            isBillingPhoneRequired: isBillingPhoneRequired ?? self.isBillingPhoneRequired,
            currenciesSupported: currenciesSupported ?? self.currenciesSupported,
            defaultCurrency: defaultCurrency ?? self.defaultCurrency,
            selectedCurrency: selectedCurrency ?? self.selectedCurrency,
            measurementStandard: measurementStandard ?? self.measurementStandard,
            showCustomCheckoutForm: showCustomCheckoutForm ?? self.showCustomCheckoutForm,
            enableMailingListOptInByDefault: enableMailingListOptInByDefault ?? self.enableMailingListOptInByDefault,
            contactLocation: contactLocation ?? self.contactLocation,
            businessName: businessName ?? self.businessName,
            sameAsRetailLocation: sameAsRetailLocation ?? self.sameAsRetailLocation,
            businessID: businessID ?? self.businessID,
            merchandisingSettings: merchandisingSettings ?? self.merchandisingSettings,
            isLive: isLive ?? self.isLive,
            multipleQuantityAllowedForServices: multipleQuantityAllowedForServices ?? self.multipleQuantityAllowedForServices
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - MerchandisingSettings
struct MerchandisingSettings: Codable {
    let scarcityEnabledOnProductItems, scarcityEnabledOnProductBlocks: Bool?
    let scarcityMessageType: String?
    let scarcityThreshold: Int?
    let multipleQuantityAllowedForServices, restockNotificationsEnabled, relatedProductsEnabled: Bool?
}

// MARK: MerchandisingSettings convenience initializers and mutators

extension MerchandisingSettings {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(MerchandisingSettings.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        scarcityEnabledOnProductItems: Bool?? = nil,
        scarcityEnabledOnProductBlocks: Bool?? = nil,
        scarcityMessageType: String?? = nil,
        scarcityThreshold: Int?? = nil,
        multipleQuantityAllowedForServices: Bool?? = nil,
        restockNotificationsEnabled: Bool?? = nil,
        relatedProductsEnabled: Bool?? = nil
        ) -> MerchandisingSettings {
        return MerchandisingSettings(
            scarcityEnabledOnProductItems: scarcityEnabledOnProductItems ?? self.scarcityEnabledOnProductItems,
            scarcityEnabledOnProductBlocks: scarcityEnabledOnProductBlocks ?? self.scarcityEnabledOnProductBlocks,
            scarcityMessageType: scarcityMessageType ?? self.scarcityMessageType,
            scarcityThreshold: scarcityThreshold ?? self.scarcityThreshold,
            multipleQuantityAllowedForServices: multipleQuantityAllowedForServices ?? self.multipleQuantityAllowedForServices,
            restockNotificationsEnabled: restockNotificationsEnabled ?? self.restockNotificationsEnabled,
            relatedProductsEnabled: relatedProductsEnabled ?? self.relatedProductsEnabled
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - PaymentSettings
struct PaymentSettings: Codable {
    let stripeLivePublicAPIKey, stripeTestPublicAPIKey, stripeUserID, stripeAccountCountry: String?
    let paypalLiveMerchantID: String?
    
    enum CodingKeys: String, CodingKey {
        case stripeLivePublicAPIKey = "stripeLivePublicApiKey"
        case stripeTestPublicAPIKey = "stripeTestPublicApiKey"
        case stripeUserID = "stripeUserId"
        case stripeAccountCountry
        case paypalLiveMerchantID = "paypalLiveMerchantId"
    }
}

// MARK: PaymentSettings convenience initializers and mutators

extension PaymentSettings {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(PaymentSettings.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        stripeLivePublicAPIKey: String?? = nil,
        stripeTestPublicAPIKey: String?? = nil,
        stripeUserID: String?? = nil,
        stripeAccountCountry: String?? = nil,
        paypalLiveMerchantID: String?? = nil
        ) -> PaymentSettings {
        return PaymentSettings(
            stripeLivePublicAPIKey: stripeLivePublicAPIKey ?? self.stripeLivePublicAPIKey,
            stripeTestPublicAPIKey: stripeTestPublicAPIKey ?? self.stripeTestPublicAPIKey,
            stripeUserID: stripeUserID ?? self.stripeUserID,
            stripeAccountCountry: stripeAccountCountry ?? self.stripeAccountCountry,
            paypalLiveMerchantID: paypalLiveMerchantID ?? self.paypalLiveMerchantID
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - UserAccountsSettings
struct UserAccountsSettings: Codable {
    let loginAllowed, signupAllowed: Bool?
}

// MARK: UserAccountsSettings convenience initializers and mutators

extension UserAccountsSettings {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UserAccountsSettings.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        loginAllowed: Bool?? = nil,
        signupAllowed: Bool?? = nil
        ) -> UserAccountsSettings {
        return UserAccountsSettings(
            loginAllowed: loginAllowed ?? self.loginAllowed,
            signupAllowed: signupAllowed ?? self.signupAllowed
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    
    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }
    
    public var hashValue: Int {
        return 0
    }
    
    public func hash(into hasher: inout Hasher) {
        // No-op
    }
    
    public init() {}
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String
    
    required init?(intValue: Int) {
        return nil
    }
    
    required init?(stringValue: String) {
        key = stringValue
    }
    
    var intValue: Int? {
        return nil
    }
    
    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {
    
    let value: Any
    
    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }
    
    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }
    
    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }
    
    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }
    
    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }
    
    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
