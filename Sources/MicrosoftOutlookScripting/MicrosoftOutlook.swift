import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> Any!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
    var isRunning: Bool { get }
}

// MARK: MicrosoftOutlookSaveOptions
@objc public enum MicrosoftOutlookSaveOptions : AEKeyword {
    case yes = 0x79657320 /* 'yes ' */
    case no = 0x6e6f2020 /* 'no  ' */
    case ask = 0x61736b20 /* 'ask ' */
}

// MARK: MicrosoftOutlookPrintingErrorHandling
@objc public enum MicrosoftOutlookPrintingErrorHandling : AEKeyword {
    case standard = 0x6c777374 /* 'lwst' */
    case detailed = 0x6c776474 /* 'lwdt' */
}

// MARK: MicrosoftOutlookTaskSelection
@objc public enum MicrosoftOutlookTaskSelection : AEKeyword {
    case printAll = 0x50416c6c /* 'PAll' */
    case selectedTask = 0x53656c65 /* 'Sele' */
    case dueToday = 0x44546f64 /* 'DTod' */
    case dueThisWeek = 0x4454576b /* 'DTWk' */
    case incomplete = 0x49436f6d /* 'ICom' */
    case listView = 0x4c566965 /* 'LVie' */
}

// MARK: MicrosoftOutlookContactNameStyle
@objc public enum MicrosoftOutlookContactNameStyle : AEKeyword {
    case lastFirst = 0x4c614669 /* 'LaFi' */
    case firstLast = 0x46694c61 /* 'FiLa' */
    case lastCommaFirst = 0x4c434669 /* 'LCFi' */
}

// MARK: MicrosoftOutlookContactSelection
@objc public enum MicrosoftOutlookContactSelection : AEKeyword {
    case selectedContact = 0x50435365 /* 'PCSe' */
    case allContacts = 0x416c6c43 /* 'AllC' */
    case flaggedContacts = 0x466c6743 /* 'FlgC' */
}

// MARK: MicrosoftOutlookSearchType
@objc public enum MicrosoftOutlookSearchType : AEKeyword {
    case nameSearch = 0x63704e53 /* 'cpNS' */
    case allFields = 0x63704146 /* 'cpAF' */
}

// MARK: MicrosoftOutlookMainWindowView
@objc public enum MicrosoftOutlookMainWindowView : AEKeyword {
    case mailView = 0x4d615677 /* 'MaVw' */
    case calendarView = 0x43615677 /* 'CaVw' */
    case contactView = 0x436f5677 /* 'CoVw' */
    case taskView = 0x54615677 /* 'TaVw' */
    case noteView = 0x4e6f5677 /* 'NoVw' */
}

// MARK: MicrosoftOutlookPriority
@objc public enum MicrosoftOutlookPriority : AEKeyword {
    case priorityHigh = 0x50724869 /* 'PrHi' */
    case priorityNormal = 0x50724e72 /* 'PrNr' */
    case priorityLow = 0x50724c6f /* 'PrLo' */
}

// MARK: MicrosoftOutlookFlag
@objc public enum MicrosoftOutlookFlag : AEKeyword {
    case notFlagged = 0x466c4e46 /* 'FlNF' */
    case notCompleted = 0x466c4e43 /* 'FlNC' */
    case completed = 0x466c436f /* 'FlCo' */
}

// MARK: MicrosoftOutlookEmailAddressType
@objc public enum MicrosoftOutlookEmailAddressType : AEKeyword {
    case unresolvedAddress = 0x556e4164 /* 'UnAd' */
    case contactAddress = 0x436f4164 /* 'CoAd' */
    case publicGroupAddress = 0x50754164 /* 'PuAd' */
    case privateGroupAddress = 0x50724164 /* 'PrAd' */
}

// MARK: MicrosoftOutlookMarkAsReadBehavior
@objc public enum MicrosoftOutlookMarkAsReadBehavior : AEKeyword {
    case afterPreviewTime = 0x4d525072 /* 'MRPr' */
    case afterSelectionChange = 0x4d525343 /* 'MRSC' */
    case afterOpening = 0x4d524f70 /* 'MROp' */
}

// MARK: MicrosoftOutlookAttributionStyle
@objc public enum MicrosoftOutlookAttributionStyle : AEKeyword {
    case none = 0x6e6f6e65 /* 'none' */
    case includeHeader = 0x496e4864 /* 'InHd' */
    case includeCustom = 0x496e4373 /* 'InCs' */
}

// MARK: MicrosoftOutlookInternetPictureBehavior
@objc public enum MicrosoftOutlookInternetPictureBehavior : AEKeyword {
    case always = 0x416c7773 /* 'Alws' */
    case onlyFromContacts = 0x4672436f /* 'FrCo' */
    case never = 0x4e657661 /* 'Neva' */
}

// MARK: MicrosoftOutlookSendToSelfBehavior
@objc public enum MicrosoftOutlookSendToSelfBehavior : AEKeyword {
    case cc = 0x43432020 /* 'CC  ' */
    case bcc = 0x42434320 /* 'BCC ' */
}

// MARK: MicrosoftOutlookReadingPanePosition
@objc public enum MicrosoftOutlookReadingPanePosition : AEKeyword {
    case displayRight = 0x696c4463 /* 'ilDc' */
    case displayBelow = 0x696c4470 /* 'ilDp' */
    case displayHidden = 0x696c4468 /* 'ilDh' */
}

// MARK: MicrosoftOutlookItemListSort
@objc public enum MicrosoftOutlookItemListSort : AEKeyword {
    case statusSort = 0x696c5353 /* 'ilSS' */
    case prioritySort = 0x696c5053 /* 'ilPS' */
    case attachmentSort = 0x696c4153 /* 'ilAS' */
    case fromSort = 0x696c4653 /* 'ilFS' */
    case toSort = 0x696c5453 /* 'ilTS' */
    case subjectSort = 0x696c5355 /* 'ilSU' */
    case sentTimeSort = 0x696c5345 /* 'ilSE' */
    case receivedTimeSort = 0x696c5253 /* 'ilRS' */
    case flagSort = 0x696c464c /* 'ilFL' */
    case categorySort = 0x696c4353 /* 'ilCS' */
    case sizeSort = 0x696c5349 /* 'ilSI' */
    case folderSort = 0x696c464f /* 'ilFO' */
    case accountSort = 0x696c4143 /* 'ilAC' */
    case conversationSort = 0x696c434f /* 'ilCO' */
    case displayNameSort = 0x696c4453 /* 'ilDS' */
    case titleSort = 0x696c5449 /* 'ilTI' */
    case dueDateSort = 0x696c4444 /* 'ilDD' */
}

// MARK: MicrosoftOutlookProductActivationState
@objc public enum MicrosoftOutlookProductActivationState : AEKeyword {
    case fullFunctionality = 0x7046464d /* 'pFFM' */
    case reducedFunctionalityNeverActivated = 0x7052464d /* 'pRFM' */
    case reducedFunctionalityDeactivated = 0x70524644 /* 'pRFD' */
    case offlineDemo = 0x704f4644 /* 'pOFD' */
}

// MARK: MicrosoftOutlookSecurityMessageDigestAlgorithm
@objc public enum MicrosoftOutlookSecurityMessageDigestAlgorithm : AEKeyword {
    case sha512 = 0x53353132 /* 'S512' */
    case sha384 = 0x53333834 /* 'S384' */
    case sha256 = 0x53323536 /* 'S256' */
    case sha1 = 0x53484131 /* 'SHA1' */
}

// MARK: MicrosoftOutlookSecuritySymmetricEncryptionAlgorithm
@objc public enum MicrosoftOutlookSecuritySymmetricEncryptionAlgorithm : AEKeyword {
    case aes256 = 0x41323536 /* 'A256' */
    case aes192 = 0x41313932 /* 'A192' */
    case aes128 = 0x41313238 /* 'A128' */
    case tripleDES = 0x33444553 /* '3DES' */
}

// MARK: MicrosoftOutlookExchangeAccountType
@objc public enum MicrosoftOutlookExchangeAccountType : AEKeyword {
    case primaryAccount = 0x6550726d /* 'ePrm' */
    case delegatedAccount = 0x65446c67 /* 'eDlg' */
    case otherUsersFolderAccount = 0x654f7468 /* 'eOth' */
}

// MARK: MicrosoftOutlookRole
@objc public enum MicrosoftOutlookRole : AEKeyword {
    case noRole = 0x66724e52 /* 'frNR' */
    case owner = 0x66724f57 /* 'frOW' */
    case publishingEditor = 0x66725045 /* 'frPE' */
    case editor = 0x66724544 /* 'frED' */
    case publishingAuthor = 0x66725041 /* 'frPA' */
    case author = 0x66724155 /* 'frAU' */
    case noneditingAuthor = 0x66724e41 /* 'frNA' */
    case reviewer = 0x66725245 /* 'frRE' */
    case contributor = 0x6672434f /* 'frCO' */
    case freebusyTimeOnly = 0x66724642 /* 'frFB' */
    case freebusyAndSubjectAndLocation = 0x66724d49 /* 'frMI' */
    case customRole = 0x66724355 /* 'frCU' */
}

// MARK: MicrosoftOutlookEditLevel
@objc public enum MicrosoftOutlookEditLevel : AEKeyword {
    case editNone = 0x6670454e /* 'fpEN' */
    case editOwn = 0x6670454f /* 'fpEO' */
    case editAll = 0x66704541 /* 'fpEA' */
}

// MARK: MicrosoftOutlookReadLevel
@objc public enum MicrosoftOutlookReadLevel : AEKeyword {
    case readNone = 0x6670524e /* 'fpRN' */
    case readFreebusy = 0x66704642 /* 'fpFB' */
    case readCalendarSummary = 0x66704353 /* 'fpCS' */
    case readAll = 0x66705241 /* 'fpRA' */
}

// MARK: MicrosoftOutlookPermissionsUserType
@objc public enum MicrosoftOutlookPermissionsUserType : AEKeyword {
    case normalUser = 0x75744e55 /* 'utNU' */
    case anonymousUser = 0x75744155 /* 'utAU' */
    case defaultUser = 0x75744455 /* 'utDU' */
}

// MARK: MicrosoftOutlookSharedMailboxType
@objc public enum MicrosoftOutlookSharedMailboxType : AEKeyword {
    case inboxFolder = 0x61737449 /* 'astI' */
    case calendarFolder = 0x61737443 /* 'astC' */
    case addressBookFolder = 0x61737441 /* 'astA' */
}

// MARK: MicrosoftOutlookDelegatePermission
@objc public enum MicrosoftOutlookDelegatePermission : AEKeyword {
    case noneDelegatePermission = 0x64704e6f /* 'dpNo' */
    case editorDelegatePermission = 0x64704564 /* 'dpEd' */
    case reviewerDelegatePermission = 0x64705265 /* 'dpRe' */
    case authorDelegatePermission = 0x64704175 /* 'dpAu' */
    case customDelegatePermission = 0x64704375 /* 'dpCu' */
}

// MARK: MicrosoftOutlookRecipientType
@objc public enum MicrosoftOutlookRecipientType : AEKeyword {
    case toRecipientType = 0x5254746f /* 'RTto' */
    case ccRecipientType = 0x52546363 /* 'RTcc' */
    case bccRecipientType = 0x52546263 /* 'RTbc' */
}

// MARK: MicrosoftOutlookMeetingMessageType
@objc public enum MicrosoftOutlookMeetingMessageType : AEKeyword {
    case requestMeetingType = 0x4d547271 /* 'MTrq' */
    case responseMeetingType = 0x4d547265 /* 'MTre' */
    case cancellationMeetingType = 0x4d546361 /* 'MTca' */
    case counterProposalMeetingType = 0x4d54636f /* 'MTco' */
}

// MARK: MicrosoftOutlookContactEmailAddressType
@objc public enum MicrosoftOutlookContactEmailAddressType : AEKeyword {
    case home = 0x65486d65 /* 'eHme' */
    case work = 0x6557726b /* 'eWrk' */
    case other = 0x654f7468 /* 'eOth' */
}

// MARK: MicrosoftOutlookContactIMAddressType
@objc public enum MicrosoftOutlookContactIMAddressType : AEKeyword {
    case dotNet = 0x65444e74 /* 'eDNt' */
    case sip = 0x65534970 /* 'eSIp' */
    case imOther = 0x65494f74 /* 'eIOt' */
}

// MARK: MicrosoftOutlookContactDisplayType
@objc public enum MicrosoftOutlookContactDisplayType : AEKeyword {
    case person = 0x63647450 /* 'cdtP' */
    case distributionList = 0x63647444 /* 'cdtD' */
    case privateDistributionList = 0x63645044 /* 'cdPD' */
    case meetingRoom = 0x63647052 /* 'cdpR' */
    case equipment = 0x63706445 /* 'cpdE' */
}

// MARK: MicrosoftOutlookFreeBusyStatus
@objc public enum MicrosoftOutlookFreeBusyStatus : AEKeyword {
    case busy = 0x65534275 /* 'eSBu' */
    case free = 0x65534672 /* 'eSFr' */
    case tentative = 0x65535465 /* 'eSTe' */
    case outOfOffice = 0x65534f4f /* 'eSOO' */
}

// MARK: MicrosoftOutlookEndDataType
@objc public enum MicrosoftOutlookEndDataType : AEKeyword {
    case noEndType = 0x654e4574 /* 'eNEt' */
    case endDateType = 0x65454474 /* 'eEDt' */
    case endNumberedType = 0x65454e74 /* 'eENt' */
}

// MARK: MicrosoftOutlookRecurrencePatternType
@objc public enum MicrosoftOutlookRecurrencePatternType : AEKeyword {
    case daily = 0x65526470 /* 'eRdp' */
    case weekly = 0x65527770 /* 'eRwp' */
    case relativeMonthly = 0x6552726d /* 'eRrm' */
    case absoluteMonthly = 0x6552616d /* 'eRam' */
    case relativeYearly = 0x65527279 /* 'eRry' */
    case absoluteYearly = 0x65526179 /* 'eRay' */
}

// MARK: MicrosoftOutlookAttendeeType
@objc public enum MicrosoftOutlookAttendeeType : AEKeyword {
    case requiredAttendeeType = 0x41547271 /* 'ATrq' */
    case optionalAttendeeType = 0x41546f70 /* 'ATop' */
    case resourceAttendeeType = 0x41547273 /* 'ATrs' */
}

// MARK: MicrosoftOutlookAcceptanceStatus
@objc public enum MicrosoftOutlookAcceptanceStatus : AEKeyword {
    case accepted = 0x41536163 /* 'ASac' */
    case tentativelyAccepted = 0x41537465 /* 'ASte' */
    case declined = 0x41536465 /* 'ASde' */
    case notResponded = 0x41536e72 /* 'ASnr' */
}

// MARK: MicrosoftOutlookAttendeeAddressType
@objc public enum MicrosoftOutlookAttendeeAddressType : AEKeyword {
    case unresolvedAttendee = 0x756e4164 /* 'unAd' */
    case contactAttendee = 0x636e4164 /* 'cnAd' */
    case publicGroupAttendee = 0x70674164 /* 'pgAd' */
    case privateGroupAttendee = 0x70614164 /* 'paAd' */
}

// MARK: MicrosoftOutlookGenericMethods
@objc public protocol MicrosoftOutlookGenericMethods {
    @objc optional func `open`() // Open an object.
    @objc optional func closeSaving(_ saving: MicrosoftOutlookSaveOptions, savingIn: URL!) // Close an object.
    @objc optional func delete() // Delete an object. Messages and folders are moved to the corresponding deleted items folder (See permanently delete command in the Outlook Suite).
    @objc optional func duplicateTo(_ to: SBObject!, withProperties: [AnyHashable : Any]!) // Copy object(s) and put the copies at a new location.
    @objc optional func exists() -> Bool // Verify if an object exists.
    @objc optional func moveTo(_ to: SBObject!) // Move object(s) to a new location.
    @objc optional func saveIn(_ in_: URL!, as: String!) // Save an object.
    @objc optional func run() // Open application.
    @objc optional func printWithProperties(_ withProperties: [AnyHashable : Any]!) // Print an object.
}

// MARK: MicrosoftOutlookItem
@objc public protocol MicrosoftOutlookItem: SBObjectProtocol, MicrosoftOutlookGenericMethods {
    @objc optional var properties: [AnyHashable : Any] { get } // All of the object's properties.
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // All of the object's properties.
}
extension SBObject: MicrosoftOutlookItem {}

// MARK: MicrosoftOutlookWindow
@objc public protocol MicrosoftOutlookWindow: MicrosoftOutlookItem {
    @objc optional var name: String { get } // The full title of the window.
    @objc optional func id() -> Int // The unique identifier of the window.
    @objc optional var bounds: NSRect { get } // The bounding rectangle of the window.
    @objc optional var closeable: Bool { get } // Whether the window has a close box.
    @objc optional var titled: Bool { get } // Whether the window has a title bar.
    @objc optional var index: Int { get } // The index of the window in the back-to-front window ordering.
    @objc optional var object: MicrosoftOutlookObject { get } // The record displayed in the window (if there is one).
    @objc optional var floating: Bool { get } // Whether the window floats.
    @objc optional var miniaturizable: Bool { get } // Whether the window can be miniaturized.
    @objc optional var miniaturized: Bool { get } // Whether the window is currently miniaturized.
    @objc optional var modal: Bool { get } // Whether the window is the application's current modal window.
    @objc optional var resizable: Bool { get } // Whether the window can be resized.
    @objc optional var visible: Bool { get } // Whether the window is currently visible.
    @objc optional var zoomable: Bool { get } // Whether the window can be zoomed.
    @objc optional var zoomed: Bool { get } // Whether the window is currently zoomed.
    @objc optional func setName(_ name: String!) // The full title of the window.
    @objc optional func setBounds(_ bounds: NSRect) // The bounding rectangle of the window.
    @objc optional func setIndex(_ index: Int) // The index of the window in the back-to-front window ordering.
    @objc optional func setMiniaturized(_ miniaturized: Bool) // Whether the window is currently miniaturized.
    @objc optional func setVisible(_ visible: Bool) // Whether the window is currently visible.
    @objc optional func setZoomed(_ zoomed: Bool) // Whether the window is currently zoomed.
}
extension SBObject: MicrosoftOutlookWindow {}

// MARK: MicrosoftOutlookApplication
@objc public protocol MicrosoftOutlookApplication: SBApplicationProtocol {
    @objc optional func addressBooks() -> SBElementArray
    @objc optional func calendars() -> SBElementArray
    @objc optional func calendarEvents() -> SBElementArray
    @objc optional func categories() -> SBElementArray
    @objc optional func contacts() -> SBElementArray
    @objc optional func draftWindows() -> SBElementArray
    @objc optional func exchangeAccounts() -> SBElementArray
    @objc optional func folders() -> SBElementArray
    @objc optional func groups() -> SBElementArray
    @objc optional func imapAccounts() -> SBElementArray
    @objc optional func incomingMessages() -> SBElementArray
    @objc optional func ldapAccounts() -> SBElementArray
    @objc optional func mailFolders() -> SBElementArray
    @objc optional func mainWindows() -> SBElementArray
    @objc optional func messages() -> SBElementArray
    @objc optional func notes() -> SBElementArray
    @objc optional func noteFolders() -> SBElementArray
    @objc optional func outgoingMessages() -> SBElementArray
    @objc optional func popAccounts() -> SBElementArray
    @objc optional func tasks() -> SBElementArray
    @objc optional func taskFolders() -> SBElementArray
    @objc optional func signatures() -> SBElementArray
    @objc optional func windows() -> SBElementArray
    @objc optional var currentMessages: [MicrosoftOutlookMessage] { get } // The current messages depending on the context.
    @objc optional var defaultAccount: MicrosoftOutlookAccount { get } // The default account.
    @objc optional var frontmost: Bool { get } // Is this the frontmost (active) application?
    @objc optional var meContact: MicrosoftOutlookContact { get } // The contact that represents the user.
    @objc optional var name: String { get } // The name of the application.
    @objc optional var onMyComputer: MicrosoftOutlookFolder { get } // The On My Computer folder.
    @objc optional var selectedFolder: MicrosoftOutlookFolder { get } // The folder that is currently selected in the frontmost main window.
    @objc optional var selectedObjects: [MicrosoftOutlookObject] { get } // The list of objects that are currently selected in the frontmost main window.
    @objc optional var selectedText: String { get } // The text that is currently selected in the frontmost window.
    @objc optional var selection: Any { get } // The selection in the frontmost window.
    @objc optional var sendAll: String { get } // Does nothing.
    @objc optional var sendAndReceiveAll: String { get } // Does nothing.
    @objc optional var version: String { get } // The version of the application.
    @objc optional var workingOffline: Bool { get } // Is Outlook working offline (not connected to the internet)?
    @objc optional var inbox: MicrosoftOutlookMailFolder { get } // The inbox folder of the default account.
    @objc optional var drafts: MicrosoftOutlookMailFolder { get } // The drafts folder of the default account.
    @objc optional var sentItems: MicrosoftOutlookMailFolder { get } // The sent items folder of the default account.
    @objc optional var deletedItems: MicrosoftOutlookMailFolder { get } // The deleted items folder of the default account.
    @objc optional var junkMail: MicrosoftOutlookMailFolder { get } // The junk mail folder of the default account.
    @objc optional var outbox: MicrosoftOutlookMailFolder { get } // The outbox folder of the default account.
    @objc optional var currentIdentityFolder: URL { get } // The folder of the current identity being used by OutLook.
    @objc optional var groupSimilarFolders: Bool { get } // Indicates whether to group similar folders (Inbox, Drafts, etc.) from different accounts.
    @objc optional var hideOnMyComputerFolders: Bool { get } // Indicates whether the on my computer folders are hidden.
    @objc optional var displayAlerts: Bool { get } // Indicates whether to display a desktop alert when new mail arrives.
    @objc optional var alertShowsPreview: Bool { get } // Indicates whether the alert displayed when new mail arrives includes a preview of the mail.
    @objc optional var bounceDockIcon: Bool { get } // Indicates whether to bounce the dock icon when new mail arrives.
    @objc optional var playSoundOnNewMessage: Bool { get } // Indicates whether to play sound when a new message arrives.
    @objc optional var playSoundOnMessageSend: Bool { get } // Indicates whether to play sound when a message is sent.
    @objc optional var playSoundOnReminder: Bool { get } // Indicates whether to play sound when a reminder fires.
    @objc optional var playSoundOnSyncError: Bool { get } // Indicates whether to play sound when an error occurs while syncing.
    @objc optional var playSoundOnNoNewMessages: Bool { get } // Indicates whether to play sound if there are no new messages.
    @objc optional var playSoundOnStartup: Bool { get } // Indicates whether to play sound when Outlook starts up.
    @objc optional var categorizeMessageFromContacts: Bool { get } // Indicates whether messages are automatically assigned categories based on the categores of the sender's contact.
    @objc optional var showNewCategoriesInNavigationPane: Bool { get } // Indicates whether to automatically show new categories in the navigation pane.
    @objc optional var markItemAsRead: MicrosoftOutlookMarkAsReadBehavior { get } // Indicates when to mark an item as read.
    @objc optional var markAsReadPreviewDuration: Int { get } // The number of seconds to preview an item before marking it as read (applicable only when mark item as read is set to mark as read after preview).
    @objc optional var expandSingleConversation: Bool { get } // Indicates whether to expand only one conversation at a time.
    @objc optional var expandConversationOnSelect: Bool { get } // Indicates whether to automatically expand a conversation when selected.
    @objc optional var highlightMessagesFromConversation: Bool { get } // Indicates whether to highlight messages from the same conversation.
    @objc optional var hideImapMessagesMarkedForDeletion: Bool { get } // Indicates whether to hide IMAP messages which are marked for deletion.
    @objc optional var internetPictureBehavior: MicrosoftOutlookInternetPictureBehavior { get } // Indicates when to download internet pictures.
    @objc optional var indentLinesOfOriginalHtmlMessage: Bool { get } // Indicates whether to indent each line of the original message when replying or forwarding a message in HTML.
    @objc optional var placeCursorBeforeOriginalHtmlMessage: Bool { get } // Indicates whether to place the cursor before the original message when replying or forwarding a message in HTML.
    @objc optional var attributionOfHtmlMessage: MicrosoftOutlookAttributionStyle { get } // The attribution style to use for HTML messages.
    @objc optional var indentLinesOfOriginalPlainTextMessage: Bool { get } // Indicates whether to indent each line of the original message when replying or forwarding a message in plain text.
    @objc optional var placeCursorBeforeOriginalPlainTextMessage: Bool { get } // Indicates whether to place the cursor before the original message when replying or forwarding a message in plain text.
    @objc optional var attributionOfPlainTextMessage: MicrosoftOutlookAttributionStyle { get } // The attribution style to use for plain text messages.
    @objc optional var composeMessagesInHtmlByDefault: Bool { get } // Indicates whether new messages are created in HTML by default.
    @objc optional var retainFormatOnRepliesOrForwards: Bool { get } // Indicates whether to use the format of the original message when replying or forwarding.
    @objc optional var useDefaultAccountForRepliesAndForwards: Bool { get } // Indicates whether to use the default account when replying or forwarding.
    @objc optional var closeWindowAfterReplyAndForward: Bool { get } // Indicates whether to close the original message window when replying or forwarding.
    @objc optional var includeMyselfWhenSending: Bool { get } // Indicates whether to add myself when sending messages.
    @objc optional var includeMyselfAs: MicrosoftOutlookSendToSelfBehavior { get } // The option to use when including myself when sending messages.
    @objc optional var sharedAlertsCenter: MicrosoftOutlookAlertsCenter { get }
    @objc optional var sharedContactsPanel: MicrosoftOutlookContactsPanel { get } // Access to the Contacts Panel, a window that can be used to search various directory sources for contacts.
    @objc optional var systemDefaultEverythingApplication: Bool { get } // Property returns YES if Outlook is the system default for mailto: links. Setting this value to YES makes Outlook the default application for mailto:, eml, ics, and vcf files and their appropriate UTI types. Setting this value to NO throws an error
    @objc optional var systemDefaultMailApplication: Bool { get } // Returns whether Outlook is the default application for mailto: links. Setting it to true makes Outlook the default for mailto: and for eml files. Setting this property to false makes mail.app the defalut
    @objc optional var systemDefaultCalendarApplication: Bool { get } // Returns whether Outlook is the default handler for ics files. Setting it to false makes ical the default handler
    @objc optional var systemDefaultAddressBookApplication: Bool { get } // Returns whether Outlook is the default handler for vcf files. Setting it to false makes Address Book the default
    @objc optional var activationState: MicrosoftOutlookProductActivationState { get } // The current product activation state of the application
    @objc optional var defaultTextEncoding: Int { get } // The default text encoding to use when creating new draft messages. use 0 for 'automatic'.  Use 21 for UTF-8. Other values are not publicly exposed.
    @objc optional var safeSenderList: [String] { get } // The list of email addresses and domains which should not be treated as junk mail
    @objc optional var blockedSenderList: [String] { get } // The list of email addresses and domains which should be treated as junk mail
    @objc optional func `open`(_ x: Any!) // Open an object.
    @objc optional func quitSaving(_ saving: MicrosoftOutlookSaveOptions) // Quit an application.
    @objc optional func run() // Open application.
    @objc optional func importOlm(_ x: URL!) -> Bool // Import an olm archive.
    @objc optional func importPst(_ x: URL!) -> Bool // Import a pst archive.
    @objc optional func clearRecentRecipients() // Remove all recent email recipients.
    @objc optional func autodiscoverEmailAddress(_ emailAddress: String!, domain: String!, userName: String!, password: String!) -> [AnyHashable : Any] // Autodiscover the settings for an exchange account.
    @objc optional func importEml(_ x: URL!, to: SBObject!) -> MicrosoftOutlookIncomingMessage // Import an eml file.
    @objc optional func openContactEmailAddress(_ emailAddress: String!) -> Bool // Open a contact in Outlook.
    @objc optional func expand(_ x: Any!, exchangeAccount: MicrosoftOutlookExchangeAccount!) -> [Any] // Queries DL expansion information for a distribution list.
    @objc optional func loadImageForceUpdate(_ forceUpdate: Bool, emailAddress: [AnyHashable : Any]!, contact: MicrosoftOutlookContact!) -> Any // Load an image using OLImageLoader
    @objc optional func importVcf(_ x: URL!, to: SBObject!) -> [Any] // Import a vcf file.
    @objc optional func goTo(_ x: Date!) // Switches the current calendar view to the date specified.
    @objc optional func importIcs(_ x: URL!, to: SBObject!) -> [Any] // Import an ics file.
    @objc optional func remindersVisible() -> Bool // Whether reminders window is currently visible.
    @objc optional func handleURL(_ x: String!) // Handle a mailto URL.
    @objc optional func setDefaultAccount(_ defaultAccount: MicrosoftOutlookAccount!) // The default account.
    @objc optional func setMeContact(_ meContact: MicrosoftOutlookContact!) // The contact that represents the user.
    @objc optional func setSelectedFolder(_ selectedFolder: MicrosoftOutlookFolder!) // The folder that is currently selected in the frontmost main window.
    @objc optional func setSelectedObjects(_ selectedObjects: [MicrosoftOutlookObject]!) // The list of objects that are currently selected in the frontmost main window.
    @objc optional func setSelectedText(_ selectedText: String!) // The text that is currently selected in the frontmost window.
    @objc optional func setSelection(_ selection: Any!) // The selection in the frontmost window.
    @objc optional func setWorkingOffline(_ workingOffline: Bool) // Is Outlook working offline (not connected to the internet)?
    @objc optional func setGroupSimilarFolders(_ groupSimilarFolders: Bool) // Indicates whether to group similar folders (Inbox, Drafts, etc.) from different accounts.
    @objc optional func setHideOnMyComputerFolders(_ hideOnMyComputerFolders: Bool) // Indicates whether the on my computer folders are hidden.
    @objc optional func setDisplayAlerts(_ displayAlerts: Bool) // Indicates whether to display a desktop alert when new mail arrives.
    @objc optional func setAlertShowsPreview(_ alertShowsPreview: Bool) // Indicates whether the alert displayed when new mail arrives includes a preview of the mail.
    @objc optional func setBounceDockIcon(_ bounceDockIcon: Bool) // Indicates whether to bounce the dock icon when new mail arrives.
    @objc optional func setPlaySoundOnNewMessage(_ playSoundOnNewMessage: Bool) // Indicates whether to play sound when a new message arrives.
    @objc optional func setPlaySoundOnMessageSend(_ playSoundOnMessageSend: Bool) // Indicates whether to play sound when a message is sent.
    @objc optional func setPlaySoundOnReminder(_ playSoundOnReminder: Bool) // Indicates whether to play sound when a reminder fires.
    @objc optional func setPlaySoundOnSyncError(_ playSoundOnSyncError: Bool) // Indicates whether to play sound when an error occurs while syncing.
    @objc optional func setPlaySoundOnNoNewMessages(_ playSoundOnNoNewMessages: Bool) // Indicates whether to play sound if there are no new messages.
    @objc optional func setPlaySoundOnStartup(_ playSoundOnStartup: Bool) // Indicates whether to play sound when Outlook starts up.
    @objc optional func setCategorizeMessageFromContacts(_ categorizeMessageFromContacts: Bool) // Indicates whether messages are automatically assigned categories based on the categores of the sender's contact.
    @objc optional func setShowNewCategoriesInNavigationPane(_ showNewCategoriesInNavigationPane: Bool) // Indicates whether to automatically show new categories in the navigation pane.
    @objc optional func setMarkItemAsRead(_ markItemAsRead: MicrosoftOutlookMarkAsReadBehavior) // Indicates when to mark an item as read.
    @objc optional func setMarkAsReadPreviewDuration(_ markAsReadPreviewDuration: Int) // The number of seconds to preview an item before marking it as read (applicable only when mark item as read is set to mark as read after preview).
    @objc optional func setExpandSingleConversation(_ expandSingleConversation: Bool) // Indicates whether to expand only one conversation at a time.
    @objc optional func setExpandConversationOnSelect(_ expandConversationOnSelect: Bool) // Indicates whether to automatically expand a conversation when selected.
    @objc optional func setHighlightMessagesFromConversation(_ highlightMessagesFromConversation: Bool) // Indicates whether to highlight messages from the same conversation.
    @objc optional func setHideImapMessagesMarkedForDeletion(_ hideImapMessagesMarkedForDeletion: Bool) // Indicates whether to hide IMAP messages which are marked for deletion.
    @objc optional func setInternetPictureBehavior(_ internetPictureBehavior: MicrosoftOutlookInternetPictureBehavior) // Indicates when to download internet pictures.
    @objc optional func setIndentLinesOfOriginalHtmlMessage(_ indentLinesOfOriginalHtmlMessage: Bool) // Indicates whether to indent each line of the original message when replying or forwarding a message in HTML.
    @objc optional func setPlaceCursorBeforeOriginalHtmlMessage(_ placeCursorBeforeOriginalHtmlMessage: Bool) // Indicates whether to place the cursor before the original message when replying or forwarding a message in HTML.
    @objc optional func setAttributionOfHtmlMessage(_ attributionOfHtmlMessage: MicrosoftOutlookAttributionStyle) // The attribution style to use for HTML messages.
    @objc optional func setIndentLinesOfOriginalPlainTextMessage(_ indentLinesOfOriginalPlainTextMessage: Bool) // Indicates whether to indent each line of the original message when replying or forwarding a message in plain text.
    @objc optional func setPlaceCursorBeforeOriginalPlainTextMessage(_ placeCursorBeforeOriginalPlainTextMessage: Bool) // Indicates whether to place the cursor before the original message when replying or forwarding a message in plain text.
    @objc optional func setAttributionOfPlainTextMessage(_ attributionOfPlainTextMessage: MicrosoftOutlookAttributionStyle) // The attribution style to use for plain text messages.
    @objc optional func setComposeMessagesInHtmlByDefault(_ composeMessagesInHtmlByDefault: Bool) // Indicates whether new messages are created in HTML by default.
    @objc optional func setRetainFormatOnRepliesOrForwards(_ retainFormatOnRepliesOrForwards: Bool) // Indicates whether to use the format of the original message when replying or forwarding.
    @objc optional func setUseDefaultAccountForRepliesAndForwards(_ useDefaultAccountForRepliesAndForwards: Bool) // Indicates whether to use the default account when replying or forwarding.
    @objc optional func setCloseWindowAfterReplyAndForward(_ closeWindowAfterReplyAndForward: Bool) // Indicates whether to close the original message window when replying or forwarding.
    @objc optional func setIncludeMyselfWhenSending(_ includeMyselfWhenSending: Bool) // Indicates whether to add myself when sending messages.
    @objc optional func setIncludeMyselfAs(_ includeMyselfAs: MicrosoftOutlookSendToSelfBehavior) // The option to use when including myself when sending messages.
    @objc optional func setSystemDefaultEverythingApplication(_ systemDefaultEverythingApplication: Bool) // Property returns YES if Outlook is the system default for mailto: links. Setting this value to YES makes Outlook the default application for mailto:, eml, ics, and vcf files and their appropriate UTI types. Setting this value to NO throws an error
    @objc optional func setSystemDefaultMailApplication(_ systemDefaultMailApplication: Bool) // Returns whether Outlook is the default application for mailto: links. Setting it to true makes Outlook the default for mailto: and for eml files. Setting this property to false makes mail.app the defalut
    @objc optional func setSystemDefaultCalendarApplication(_ systemDefaultCalendarApplication: Bool) // Returns whether Outlook is the default handler for ics files. Setting it to false makes ical the default handler
    @objc optional func setSystemDefaultAddressBookApplication(_ systemDefaultAddressBookApplication: Bool) // Returns whether Outlook is the default handler for vcf files. Setting it to false makes Address Book the default
    @objc optional func setActivationState(_ activationState: MicrosoftOutlookProductActivationState) // The current product activation state of the application
    @objc optional func setDefaultTextEncoding(_ defaultTextEncoding: Int) // The default text encoding to use when creating new draft messages. use 0 for 'automatic'.  Use 21 for UTF-8. Other values are not publicly exposed.
    @objc optional func setSafeSenderList(_ safeSenderList: [String]!) // The list of email addresses and domains which should not be treated as junk mail
    @objc optional func setBlockedSenderList(_ blockedSenderList: [String]!) // The list of email addresses and domains which should be treated as junk mail
}
extension SBApplication: MicrosoftOutlookApplication {}

// MARK: MicrosoftOutlookMainWindow
@objc public protocol MicrosoftOutlookMainWindow: MicrosoftOutlookWindow {
    @objc optional func navigationNodes() -> SBElementArray
    @objc optional func objects() -> SBElementArray
    @objc optional func itemListNodes() -> SBElementArray
    @objc optional var view: MicrosoftOutlookMainWindowView { get } // Main window's view (mail, calendar, task, etc).
    @objc optional var readingPanePosition: MicrosoftOutlookReadingPanePosition { get } // The display position of the reading pane.
    @objc optional var sortedInGroups: Bool { get } // Whether the item list is sorted by groups
    @objc optional var itemListSort: [AnyHashable : Any] { get } // Description of the sort order of the item list
    @objc optional func setView(_ view: MicrosoftOutlookMainWindowView) // Main window's view (mail, calendar, task, etc).
    @objc optional func setReadingPanePosition(_ readingPanePosition: MicrosoftOutlookReadingPanePosition) // The display position of the reading pane.
    @objc optional func setSortedInGroups(_ sortedInGroups: Bool) // Whether the item list is sorted by groups
    @objc optional func setItemListSort(_ itemListSort: [AnyHashable : Any]!) // Description of the sort order of the item list
}
extension SBObject: MicrosoftOutlookMainWindow {}

// MARK: MicrosoftOutlookDraftWindow
@objc public protocol MicrosoftOutlookDraftWindow: MicrosoftOutlookWindow {
}
extension SBObject: MicrosoftOutlookDraftWindow {}

// MARK: MicrosoftOutlookObject
@objc public protocol MicrosoftOutlookObject: MicrosoftOutlookItem {
    @objc optional func id() -> Int // The unique ID of a record.
}
extension SBObject: MicrosoftOutlookObject {}

// MARK: MicrosoftOutlookCategorizableObject
@objc public protocol MicrosoftOutlookCategorizableObject: MicrosoftOutlookObject {
    @objc optional var categories: [MicrosoftOutlookCategory] { get } // The categories of an categorizable object.
    @objc optional func setCategories(_ categories: [MicrosoftOutlookCategory]!) // The categories of an categorizable object.
}
extension SBObject: MicrosoftOutlookCategorizableObject {}

// MARK: MicrosoftOutlookTodoableObject
@objc public protocol MicrosoftOutlookTodoableObject: MicrosoftOutlookCategorizableObject {
    @objc optional var todoFlag: MicrosoftOutlookFlag { get } // The flagged status of a todoable object.
    @objc optional var startDate: Any { get } // The date when a todo is scheduled to begin.
    @objc optional var dueDate: Any { get } // The date when a todo is due.
    @objc optional var reminderDateTime: Any { get } // The date and time to remind about a todo.
    @objc optional var completedDate: Date { get } // The date when a todo was marked completed.
    @objc optional func setTodoFlag(_ todoFlag: MicrosoftOutlookFlag) // The flagged status of a todoable object.
    @objc optional func setStartDate(_ startDate: Any!) // The date when a todo is scheduled to begin.
    @objc optional func setDueDate(_ dueDate: Any!) // The date when a todo is due.
    @objc optional func setReminderDateTime(_ reminderDateTime: Any!) // The date and time to remind about a todo.
}
extension SBObject: MicrosoftOutlookTodoableObject {}

// MARK: MicrosoftOutlookFolder
@objc public protocol MicrosoftOutlookFolder: MicrosoftOutlookObject {
    @objc optional func folders() -> SBElementArray
    @objc optional func mailFolders() -> SBElementArray
    @objc optional func addressBooks() -> SBElementArray
    @objc optional func calendars() -> SBElementArray
    @objc optional func taskFolders() -> SBElementArray
    @objc optional func noteFolders() -> SBElementArray
    @objc optional func objects() -> SBElementArray
    @objc optional var name: String { get } // The name of a folder.
    @objc optional var container: MicrosoftOutlookFolder { get } // The containing folder of a folder.
    @objc optional var account: MicrosoftOutlookAccount { get } // The account a folder belongs to.
    @objc optional var subscribed: Bool { get } // Is this folder subscribed to? (applicable only to exchange public folders).
    @objc optional var exchangeId: String { get } // The exchange identifier of a folder (only applicable for folders belonging to exchange accounts).
    @objc optional var hasIdleThread: Bool { get } // Does this folder have IDLE running on it? (applicable only to IMAP folders)
    @objc optional func sync() // Synchronize a folder or account.
    @objc optional func repair() // Repair message list of folder
    @objc optional func purgeDeletedItems() // Purge the deleted items in a folder
    @objc optional func emptyCache() // Empty the local cache of an exchange folder.
    @objc optional func setName(_ name: String!) // The name of a folder.
}
extension SBObject: MicrosoftOutlookFolder {}

// MARK: MicrosoftOutlookCategory
@objc public protocol MicrosoftOutlookCategory: MicrosoftOutlookObject {
    @objc optional var name: String { get } // The name of a category.
    @objc optional var color: NSColor { get } // The color of a category.
    @objc optional var showInNavigationPane: Bool { get } // True if a category is displayed in navigation pane in Calendar, Contact, Task and Note Views.
    @objc optional func setName(_ name: String!) // The name of a category.
    @objc optional func setColor(_ color: NSColor!) // The color of a category.
    @objc optional func setShowInNavigationPane(_ showInNavigationPane: Bool) // True if a category is displayed in navigation pane in Calendar, Contact, Task and Note Views.
}
extension SBObject: MicrosoftOutlookCategory {}

// MARK: MicrosoftOutlookContactsPanel
@objc public protocol MicrosoftOutlookContactsPanel: MicrosoftOutlookWindow {
    @objc optional func directorySources() -> SBElementArray
    @objc optional func contacts() -> SBElementArray
    @objc optional var searchString: String { get } // The query to search on.
    @objc optional var searchType: MicrosoftOutlookSearchType { get } // the type of search to run.
    @objc optional var currentSource: MicrosoftOutlookDirectorySource { get } // The current place searches will happen from.
    @objc optional var searching: Bool { get } // True if the contacts panel is currently in progress of searching.
    @objc optional var errorString: String { get } // Text string for the current error condition (can be empty is all is well).
    @objc optional func setSearchString(_ searchString: String!) // The query to search on.
    @objc optional func setSearchType(_ searchType: MicrosoftOutlookSearchType) // the type of search to run.
    @objc optional func setCurrentSource(_ currentSource: MicrosoftOutlookDirectorySource!) // The current place searches will happen from.
}
extension SBObject: MicrosoftOutlookContactsPanel {}

// MARK: MicrosoftOutlookDirectorySource
@objc public protocol MicrosoftOutlookDirectorySource: MicrosoftOutlookItem {
    @objc optional var name: String { get } // The name of a directory source.
}
extension SBObject: MicrosoftOutlookDirectorySource {}

// MARK: MicrosoftOutlookAttachment
@objc public protocol MicrosoftOutlookAttachment: MicrosoftOutlookItem {
    @objc optional var name: String { get } // The name of an attachment.
    @objc optional var contentType: String { get } // The MIME type of an attachement (eg. text/plain).
    @objc optional var file: URL { get } // The associated file of an attachment (if there is one). This is writable only when making a new attachment using a file.
    @objc optional var fileSize: Int { get } // The size of the associated file of an attachment (if there is one).
    @objc optional func setFile(_ file: URL!) // The associated file of an attachment (if there is one). This is writable only when making a new attachment using a file.
}
extension SBObject: MicrosoftOutlookAttachment {}

// MARK: MicrosoftOutlookAlertsCenter
@objc public protocol MicrosoftOutlookAlertsCenter: MicrosoftOutlookObject {
    @objc optional var showAlert: MicrosoftOutlookMessage { get } // Set this property to show an alert with the message.
    @objc optional var overflowTimeout: Int { get } // The length of time the alerts center will block alerts after receiving too many all at once
    @objc optional func setShowAlert(_ showAlert: MicrosoftOutlookMessage!) // Set this property to show an alert with the message.
    @objc optional func setOverflowTimeout(_ overflowTimeout: Int) // The length of time the alerts center will block alerts after receiving too many all at once
}
extension SBObject: MicrosoftOutlookAlertsCenter {}

// MARK: MicrosoftOutlookNavigationNode
@objc public protocol MicrosoftOutlookNavigationNode: MicrosoftOutlookItem {
    @objc optional func navigationNodes() -> SBElementArray
    @objc optional var expanded: Bool { get } // Whether the node is currently expanded
    @objc optional var title: String { get } // The displayed name of the node
    @objc optional var folder: Any { get } // The folder this node represents. Maybe missing value if this node does not represent a folder
    @objc optional var account: Any { get } // The account this node represents. May be missing value if this node does not represent an account
    @objc optional var category: Any { get } // The category this node represents. May be missing value if thisn ode does not represent a category
    @objc optional var checked: Bool { get } // true if this node has a check-state and is checked. Otherwise false
    @objc optional var badgeCount: Int { get } // The number being shown in the unread/count badge, or 0 if no badge is shown
    @objc optional var displayNameIsBold: Bool { get } // YES if the display name is currently showing bold, NO otherwise
    @objc optional var selectionPointX: Int { get } // The x-coordinate point on the screen where you can click to select the node. Only works properly if the node is visible on the screen.
    @objc optional var selectionPointY: Int { get } // The y-coordinate point on the screen where you can click to select the node. Only works properly if the node is visible on the screen.
    @objc optional var checkboxPointX: Int { get } // The x-coordinate point on the screen where you can click to check the checkbox. Only works properly if the node is visible on the screen
    @objc optional var checkboxPointY: Int { get } // The y-coordinate point on the screen where you can click to check the checkbox. Only works properly if the node is visible on the screen
    @objc optional var visible: Bool { get } // true if this row is completely visible, false if it is at all obscured
    @objc optional func setExpanded(_ expanded: Bool) // Whether the node is currently expanded
    @objc optional func setVisible(_ visible: Bool) // true if this row is completely visible, false if it is at all obscured
}
extension SBObject: MicrosoftOutlookNavigationNode {}

// MARK: MicrosoftOutlookItemListNode
@objc public protocol MicrosoftOutlookItemListNode: MicrosoftOutlookItem {
    @objc optional func itemListNodes() -> SBElementArray
    @objc optional var expandable: Bool { get } // Whether this node can be expanded
    @objc optional var expanded: Bool { get } // Whether the node is currently expanded
    @objc optional var visible: Bool { get } // Whether the node is currently visible on the screen. Setting this property to true scrolls the item list to make it visible if possible (ie if all of this node's ancestors are expanded)
    @objc optional var representedRecord: MicrosoftOutlookObject { get } // The record represented by this node, displayed in this node's row in the item list. Will be missing if this node is a header node
    @objc optional var headerName: String { get } // The label for this group header node, if this node represents a group header
    @objc optional var unreadCount: Int { get } // The badged count displayed in this header if it is a header node. 0 if it is not
    @objc optional var selectionPointX: Int { get } // The x coordinate of the center of the node's location on screen. Only useful if the node's row is actually visible on screen (not hidden under collapsed parents our by the scroll view)
    @objc optional var selectionPointY: Int { get } // The y coordinate of the center of the node's location on screen. Only useful if the node's row is actually visible on screen (not hidden under collapsed parents our by the scroll view)
    @objc optional func setExpanded(_ expanded: Bool) // Whether the node is currently expanded
    @objc optional func setVisible(_ visible: Bool) // Whether the node is currently visible on the screen. Setting this property to true scrolls the item list to make it visible if possible (ie if all of this node's ancestors are expanded)
}
extension SBObject: MicrosoftOutlookItemListNode {}

// MARK: MicrosoftOutlookAccount
@objc public protocol MicrosoftOutlookAccount: MicrosoftOutlookObject {
    @objc optional func folders() -> SBElementArray
    @objc optional func mailFolders() -> SBElementArray
    @objc optional func addressBooks() -> SBElementArray
    @objc optional func calendars() -> SBElementArray
    @objc optional func taskFolders() -> SBElementArray
    @objc optional func noteFolders() -> SBElementArray
    @objc optional var name: String { get } // The name of an account.
    @objc optional var fullName: String { get } // The users display name.
    @objc optional var emailAddress: String { get } // The e-mail address of an account.
    @objc optional var userName: String { get } // The user name used to connect to an account.
    @objc optional var password: String { get } // The password for an account (write-only).
    @objc optional var server: String { get } // The server used to connect to an account.
    @objc optional var port: Int { get } // The port used to connect to an account.
    @objc optional var useSsl: Bool { get } // Indicates whether a SSL connection is used for an account.
    @objc optional var rootFolder: MicrosoftOutlookMailFolder { get } // The root folder of an account.
    @objc optional var inbox: MicrosoftOutlookMailFolder { get } // The inbox folder of an account.
    @objc optional var drafts: MicrosoftOutlookMailFolder { get } // The drafts folder of an account. Some subclasses may allow writing this property.
    @objc optional var sentItems: MicrosoftOutlookMailFolder { get } // The sent items folder of an account. Some subclasses may allow writing this property.
    @objc optional var deletedItems: MicrosoftOutlookMailFolder { get } // The deleted items folder of an account. Some subclasses may allow writing this property.
    @objc optional var junkMail: MicrosoftOutlookMailFolder { get } // The junk mail folder of an account. Some subclasses may allow writing this property.
    @objc optional var outbox: MicrosoftOutlookMailFolder { get } // The outbox folder of an account.
    @objc optional var defaultCalendar: MicrosoftOutlookCalendar { get } // The default calendar for the account
    @objc optional var defaultAddressBook: MicrosoftOutlookAddressBook { get } // The default address book for the account
    @objc optional var defaultNoteFolder: MicrosoftOutlookNoteFolder { get } // The default note folder for the account
    @objc optional var defaultTaskFolder: MicrosoftOutlookTaskFolder { get } // The default task folder for the account
    @objc optional func sync() // Synchronize a folder or account.
    @objc optional func setName(_ name: String!) // The name of an account.
    @objc optional func setFullName(_ fullName: String!) // The users display name.
    @objc optional func setEmailAddress(_ emailAddress: String!) // The e-mail address of an account.
    @objc optional func setUserName(_ userName: String!) // The user name used to connect to an account.
    @objc optional func setPassword(_ password: String!) // The password for an account (write-only).
    @objc optional func setServer(_ server: String!) // The server used to connect to an account.
    @objc optional func setPort(_ port: Int) // The port used to connect to an account.
    @objc optional func setUseSsl(_ useSsl: Bool) // Indicates whether a SSL connection is used for an account.
}
extension SBObject: MicrosoftOutlookAccount {}

// MARK: MicrosoftOutlookExchangeAccount
@objc public protocol MicrosoftOutlookExchangeAccount: MicrosoftOutlookAccount {
    @objc optional func delegatedAccounts() -> SBElementArray
    @objc optional func otherUsersFolderAccounts() -> SBElementArray
    @objc optional var domain: String { get } // The domain of an exchange account.
    @objc optional var exchangeType: MicrosoftOutlookExchangeAccountType { get } // The type of an exchange account.
    @objc optional var isConnected: Bool { get } // Indicates whether an exchange account is online.
    @objc optional var principal: String { get } // The GSSAPI principal name (Kerberos v5).
    @objc optional var galDownloadDirectory: String { get } // The directory from which to download Offline Address Book files
    @objc optional var receivePartialMessages: Bool { get } // Indicates whether an exchange account gets partial messages.
    @objc optional var signMessageByDefault: Bool { get } // Indicates whether outgoing messages are signed by default.
    @objc optional var includeSigningCertificate: Bool { get } // Indicates whether outgoing messages include your signing certificate.
    @objc optional var encryptMessageByDefault: Bool { get } // Indicates whether outgoing messages are encrypted by default.
    @objc optional var messageDigestAlgorithm: MicrosoftOutlookSecurityMessageDigestAlgorithm { get } // The message digest algorithm to use.
    @objc optional var symmetricEncryptionAlgorithm: MicrosoftOutlookSecuritySymmetricEncryptionAlgorithm { get } // The symmetric encryption algorithm to use.
    @objc optional var useKerberosAuthentication: Bool { get } // Indicates whether kerberos authentication is used for an account.
    @objc optional var ldapServer: String { get } // The LDAP server for an exchange account.
    @objc optional var ldapPort: Int { get } // The LDAP port for an exchange account.
    @objc optional var ldapUseSsl: Bool { get } // Indicates whether a SSL connection is used connect to the LDAP server.
    @objc optional var ldapNeedsAuthentication: Bool { get } // Indicates whether authentication is needed for  connecting to the LDAP server.
    @objc optional var ldapSearchBase: String { get } // The search base of the LDAP server.
    @objc optional var ldapMaxEntries: Int { get } // The maximum number of entires to get from the LDAP server.
    @objc optional var backgroundAutodiscover: Bool { get } // Indicates whether background autodisover is enabled or not.
    @objc optional var oab: MicrosoftOutlookDirectorySource { get } // The directory source for this account's Offline Address Book, if it has one. Use with the contacts panel to search the OAB.
    @objc optional var rooms: MicrosoftOutlookDirectorySource { get } // The directory source for this account's meeting room index, if it has one. Use with the contacts panel to run searches
    @objc optional var serverVersion: String { get } // The version of the Exchange server.
    @objc optional var lastPasswordExpirationCheckTime: Date { get } // The time the password expiration was last checked.
    @objc optional var isMicrosoftOnline: Bool { get } // Indicates whether an account is a Microsoft Online account.
    @objc optional var autoreplyData: [AnyHashable : Any] { get } // Autoreply (Out of Office) settings for this account
    @objc optional func queryPasswordExpiration() -> Any // Query the password expiration for this account.
    @objc optional func queryFolderSizeFolder(_ folder: MicrosoftOutlookFolder!) -> [AnyHashable : Any]
    @objc optional func queryFolderPermissionsFolder(_ folder: MicrosoftOutlookFolder!) -> [Any]
    @objc optional func setFolderPermissionsFolder(_ folder: MicrosoftOutlookFolder!, newUsers: [[AnyHashable : Any]]!)
    @objc optional func queryAutoreplyData() -> [AnyHashable : Any]
    @objc optional func setAutoreplyDataNewData(_ newData: [AnyHashable : Any]!)
    @objc optional func verifyMailboxMailbox(_ mailbox: MicrosoftOutlookSharedMailboxType, userAddress: String!) -> NSNumber
    @objc optional func downloadOabNow() // Trigger offline address book download.
    @objc optional func getDelegateUsers() -> [Any] // get all delegate users of the exchange account
    @objc optional func updateDelegateUsersDelegateUsers(_ delegateUsers: [[AnyHashable : Any]]!) // update a list of delegates with delegate permissions of exchange account. By default "send meeting messages to" is set to "Delegate & copy me"
    @objc optional func addDelegateUsersDelegateUsers(_ delegateUsers: [[AnyHashable : Any]]!) // add a list of delegates in exchange account. By default "send meeting messages to" is set to "Delegate & copy me"
    @objc optional func deleteDelegateUsersDelegateEmails(_ delegateEmails: [String]!) // delete list of delegates of exchange account using full email address
    @objc optional func searchForName(_ forName: String!) -> [Any] // Search for contacts using an account.
    @objc optional func imageSearchForEmailAddress(_ forEmailAddress: [AnyHashable : Any]!) -> Any // Retrieve a contact image
    @objc optional func queryOrganizationInformationFor(_ for_: MicrosoftOutlookContact!) -> Any // Retreive the organization information for a contact.
    @objc optional func resolveNamesForName(_ forName: String!) -> [Any] // Search for contacts using EWS resolveNames.
    @objc optional func queryFreebusyForAttendees(_ forAttendees: [String]!, rangeStartTime: Date!, rangeEndTime: Date!, interval: Int) -> [Any] // Queries free/busy information from an exchange server for a set of attendees.
    @objc optional func setDomain(_ domain: String!) // The domain of an exchange account.
    @objc optional func setPrincipal(_ principal: String!) // The GSSAPI principal name (Kerberos v5).
    @objc optional func setGalDownloadDirectory(_ galDownloadDirectory: String!) // The directory from which to download Offline Address Book files
    @objc optional func setReceivePartialMessages(_ receivePartialMessages: Bool) // Indicates whether an exchange account gets partial messages.
    @objc optional func setSignMessageByDefault(_ signMessageByDefault: Bool) // Indicates whether outgoing messages are signed by default.
    @objc optional func setIncludeSigningCertificate(_ includeSigningCertificate: Bool) // Indicates whether outgoing messages include your signing certificate.
    @objc optional func setEncryptMessageByDefault(_ encryptMessageByDefault: Bool) // Indicates whether outgoing messages are encrypted by default.
    @objc optional func setMessageDigestAlgorithm(_ messageDigestAlgorithm: MicrosoftOutlookSecurityMessageDigestAlgorithm) // The message digest algorithm to use.
    @objc optional func setSymmetricEncryptionAlgorithm(_ symmetricEncryptionAlgorithm: MicrosoftOutlookSecuritySymmetricEncryptionAlgorithm) // The symmetric encryption algorithm to use.
    @objc optional func setUseKerberosAuthentication(_ useKerberosAuthentication: Bool) // Indicates whether kerberos authentication is used for an account.
    @objc optional func setLdapServer(_ ldapServer: String!) // The LDAP server for an exchange account.
    @objc optional func setLdapPort(_ ldapPort: Int) // The LDAP port for an exchange account.
    @objc optional func setLdapUseSsl(_ ldapUseSsl: Bool) // Indicates whether a SSL connection is used connect to the LDAP server.
    @objc optional func setLdapNeedsAuthentication(_ ldapNeedsAuthentication: Bool) // Indicates whether authentication is needed for  connecting to the LDAP server.
    @objc optional func setLdapSearchBase(_ ldapSearchBase: String!) // The search base of the LDAP server.
    @objc optional func setLdapMaxEntries(_ ldapMaxEntries: Int) // The maximum number of entires to get from the LDAP server.
    @objc optional func setBackgroundAutodiscover(_ backgroundAutodiscover: Bool) // Indicates whether background autodisover is enabled or not.
    @objc optional func setAutoreplyData(_ autoreplyData: [AnyHashable : Any]!) // Autoreply (Out of Office) settings for this account
}
extension SBObject: MicrosoftOutlookExchangeAccount {}

// MARK: MicrosoftOutlookPopAccount
@objc public protocol MicrosoftOutlookPopAccount: MicrosoftOutlookAccount {
    @objc optional var useSecurePassword: Bool { get } // Indicates whether a POP account always sends the password securely.
    @objc optional var deleteMessagesFromServer: Bool { get } // Indicates whether a POP account deletes messages on the server after downloading.
    @objc optional var deleteMessagesFromServerAfter: Int { get } // Number of days after which the downloaded messages will be deleted from the server.
    @objc optional var deleteMessagesFromServerWhenDeletedFromComputer: Bool { get } // Indicates whether messages will be deleted from the server when they are deleted from the computer.
    @objc optional var smtpServer: String { get } // The SMTP server used to send mail.
    @objc optional var smtpPort: Int { get } // The port to use when connecting to the SMTP server.
    @objc optional var smtpUseSsl: Bool { get } // Indicates whether a SSL connection is used connect to the SMTP server.
    @objc optional var smtpNeedsAuthentication: Bool { get } // Indicates whether authentication is needed for sending mail using the SMTP server.
    @objc optional var smtpUseAccountAuthentication: Bool { get } // Indicates whether to use the account user name and password for authentication with the SMTP server.
    @objc optional var smtpUserName: String { get } // The user name used to connect to the SMTP server.
    @objc optional var smtpPassword: String { get } // The password used to connect to the SMTP server (write-only).
    @objc optional func setUseSecurePassword(_ useSecurePassword: Bool) // Indicates whether a POP account always sends the password securely.
    @objc optional func setDeleteMessagesFromServer(_ deleteMessagesFromServer: Bool) // Indicates whether a POP account deletes messages on the server after downloading.
    @objc optional func setDeleteMessagesFromServerAfter(_ deleteMessagesFromServerAfter: Int) // Number of days after which the downloaded messages will be deleted from the server.
    @objc optional func setDeleteMessagesFromServerWhenDeletedFromComputer(_ deleteMessagesFromServerWhenDeletedFromComputer: Bool) // Indicates whether messages will be deleted from the server when they are deleted from the computer.
    @objc optional func setSmtpServer(_ smtpServer: String!) // The SMTP server used to send mail.
    @objc optional func setSmtpPort(_ smtpPort: Int) // The port to use when connecting to the SMTP server.
    @objc optional func setSmtpUseSsl(_ smtpUseSsl: Bool) // Indicates whether a SSL connection is used connect to the SMTP server.
    @objc optional func setSmtpNeedsAuthentication(_ smtpNeedsAuthentication: Bool) // Indicates whether authentication is needed for sending mail using the SMTP server.
    @objc optional func setSmtpUseAccountAuthentication(_ smtpUseAccountAuthentication: Bool) // Indicates whether to use the account user name and password for authentication with the SMTP server.
    @objc optional func setSmtpUserName(_ smtpUserName: String!) // The user name used to connect to the SMTP server.
    @objc optional func setSmtpPassword(_ smtpPassword: String!) // The password used to connect to the SMTP server (write-only).
}
extension SBObject: MicrosoftOutlookPopAccount {}

// MARK: MicrosoftOutlookImapAccount
@objc public protocol MicrosoftOutlookImapAccount: MicrosoftOutlookAccount {
    @objc optional var useSecurePassword: Bool { get } // Indicates whether an IMAP account always sends the password securely.
    @objc optional var rootFolderPath: String { get } // The path to an IMAP account's root folder.
    @objc optional var downloadMessageBodies: Bool { get } // Indicates if message bodies are downloaded completely.
    @objc optional var downloadCompleteMessagesInInboxOnly: Bool { get } // Indicates if only messages in Inbox are downloaded completely.
    @objc optional var imapIdle: Bool { get } // Indicates whether to enable idle support.
    @objc optional var imapIdleTimeout: Bool { get } // Indicates whether IMAP idle timeout is enabled or not.
    @objc optional var imapIdleTimeoutTime: Int { get } // Number of minutes of inactivity after which the connection to the server times out.
    @objc optional var messagesExpireAfter: Int { get } // Number of days after which downloaded messages are considered expired.
    @objc optional var deleteExpiredMessagesOnQuit: Bool { get } // Indicates whether expired messages are deleted when quitting.
    @objc optional var deleteAllMessagesOnQuit: Bool { get } // Indicates wether all messages are deleted when quitting.
    @objc optional var emptyDeletedItemsFolderOnQuit: Bool { get } // Indicates whether the messages in the deleted items folder are deleted when quitting.
    @objc optional var purgeMessagesOnQuit: Bool { get } // Indicates whether messages marked as deleted are permanently erased on quit.
    @objc optional var storeSentItemsOnServer: Bool { get } // Indicates whether sent messages will be stored on the IMAP server.
    @objc optional var storeDraftsOnServer: Bool { get } // Indicates whether draft messages will be stored on the IMAP server.
    @objc optional var storeDeletedItemsOnServer: Bool { get } // Indicates whether deleted messages will be stored on the IMAP server.
    @objc optional var storeJunkMailOnServer: Bool { get } // Indicates whether junk mail will be stored on the IMAP server.
    @objc optional var smtpServer: String { get } // The SMTP server used to send mail.
    @objc optional var smtpPort: Int { get } // The port to use when connecting to the SMTP server.
    @objc optional var smtpUseSsl: Bool { get } // Indicates whether a SSL connection is used connect to the SMTP server.
    @objc optional var smtpNeedsAuthentication: Bool { get } // Indicates whether authentication is needed for sending mail using the SMTP server.
    @objc optional var smtpUseAccountAuthentication: Bool { get } // Indicates whether to use the account user name and password for authentication with the SMTP server.
    @objc optional var smtpUserName: String { get } // The user name used to connect to the SMTP server.
    @objc optional var smtpPassword: String { get } // The password used to connect to the SMTP server (write-only).
    @objc optional var sentItems: MicrosoftOutlookMailFolder { get } // The sent items folder of an imap account.
    @objc optional var drafts: MicrosoftOutlookMailFolder { get } // The drafts folder of an imap account.
    @objc optional var junkMail: MicrosoftOutlookMailFolder { get } // The junk mail folder of an imap account.
    @objc optional var deletedItems: MicrosoftOutlookMailFolder { get } // The deleted items folder of an imap account.
    @objc optional var saveSentItems: Bool { get } // Indicates whether whether we will save sent items.
    @objc optional func setUseSecurePassword(_ useSecurePassword: Bool) // Indicates whether an IMAP account always sends the password securely.
    @objc optional func setRootFolderPath(_ rootFolderPath: String!) // The path to an IMAP account's root folder.
    @objc optional func setDownloadMessageBodies(_ downloadMessageBodies: Bool) // Indicates if message bodies are downloaded completely.
    @objc optional func setDownloadCompleteMessagesInInboxOnly(_ downloadCompleteMessagesInInboxOnly: Bool) // Indicates if only messages in Inbox are downloaded completely.
    @objc optional func setImapIdle(_ imapIdle: Bool) // Indicates whether to enable idle support.
    @objc optional func setImapIdleTimeout(_ imapIdleTimeout: Bool) // Indicates whether IMAP idle timeout is enabled or not.
    @objc optional func setImapIdleTimeoutTime(_ imapIdleTimeoutTime: Int) // Number of minutes of inactivity after which the connection to the server times out.
    @objc optional func setMessagesExpireAfter(_ messagesExpireAfter: Int) // Number of days after which downloaded messages are considered expired.
    @objc optional func setDeleteExpiredMessagesOnQuit(_ deleteExpiredMessagesOnQuit: Bool) // Indicates whether expired messages are deleted when quitting.
    @objc optional func setDeleteAllMessagesOnQuit(_ deleteAllMessagesOnQuit: Bool) // Indicates wether all messages are deleted when quitting.
    @objc optional func setEmptyDeletedItemsFolderOnQuit(_ emptyDeletedItemsFolderOnQuit: Bool) // Indicates whether the messages in the deleted items folder are deleted when quitting.
    @objc optional func setPurgeMessagesOnQuit(_ purgeMessagesOnQuit: Bool) // Indicates whether messages marked as deleted are permanently erased on quit.
    @objc optional func setStoreSentItemsOnServer(_ storeSentItemsOnServer: Bool) // Indicates whether sent messages will be stored on the IMAP server.
    @objc optional func setStoreDraftsOnServer(_ storeDraftsOnServer: Bool) // Indicates whether draft messages will be stored on the IMAP server.
    @objc optional func setStoreDeletedItemsOnServer(_ storeDeletedItemsOnServer: Bool) // Indicates whether deleted messages will be stored on the IMAP server.
    @objc optional func setStoreJunkMailOnServer(_ storeJunkMailOnServer: Bool) // Indicates whether junk mail will be stored on the IMAP server.
    @objc optional func setSmtpServer(_ smtpServer: String!) // The SMTP server used to send mail.
    @objc optional func setSmtpPort(_ smtpPort: Int) // The port to use when connecting to the SMTP server.
    @objc optional func setSmtpUseSsl(_ smtpUseSsl: Bool) // Indicates whether a SSL connection is used connect to the SMTP server.
    @objc optional func setSmtpNeedsAuthentication(_ smtpNeedsAuthentication: Bool) // Indicates whether authentication is needed for sending mail using the SMTP server.
    @objc optional func setSmtpUseAccountAuthentication(_ smtpUseAccountAuthentication: Bool) // Indicates whether to use the account user name and password for authentication with the SMTP server.
    @objc optional func setSmtpUserName(_ smtpUserName: String!) // The user name used to connect to the SMTP server.
    @objc optional func setSmtpPassword(_ smtpPassword: String!) // The password used to connect to the SMTP server (write-only).
    @objc optional func setSentItems(_ sentItems: MicrosoftOutlookMailFolder!) // The sent items folder of an imap account.
    @objc optional func setDrafts(_ drafts: MicrosoftOutlookMailFolder!) // The drafts folder of an imap account.
    @objc optional func setJunkMail(_ junkMail: MicrosoftOutlookMailFolder!) // The junk mail folder of an imap account.
    @objc optional func setDeletedItems(_ deletedItems: MicrosoftOutlookMailFolder!) // The deleted items folder of an imap account.
    @objc optional func setSaveSentItems(_ saveSentItems: Bool) // Indicates whether whether we will save sent items.
}
extension SBObject: MicrosoftOutlookImapAccount {}

// MARK: MicrosoftOutlookLdapAccount
@objc public protocol MicrosoftOutlookLdapAccount: MicrosoftOutlookObject {
    @objc optional var name: String { get } // The name of a LDAP account.
    @objc optional var userName: String { get } // The user name used to connect to a LDAP account.
    @objc optional var password: String { get } // The password for a LDAP account (write-only).
    @objc optional var server: String { get } // The server used to connect to a LDAP account.
    @objc optional var port: Int { get } // The port used to connect to a LDAP account.
    @objc optional var useSsl: Bool { get } // Indicates whether a SSL connection is used for a LDAP account.
    @objc optional var needsAuthentication: Bool { get } // Indicates whether authentication is needed for  connecting to a LDAP server.
    @objc optional var useKerberosAuthentication: Bool { get } // Indicates whether kerberos authentication is used for a LDAP account.
    @objc optional var principal: String { get } // The GSSAPI principal name (Kerberos v5).
    @objc optional var searchTimeout: Int { get } // The number of seconds to wait before timing out.
    @objc optional var searchBase: String { get } // The search base of a LDAP account.
    @objc optional var useSimpleSearch: Bool { get } // Indicates whether the server should use simplied search string.
    @objc optional var maximumEntries: Int { get } // The maximum number of entires to get from the server for a LDAP account.
    @objc optional func searchForName(_ forName: String!) -> [Any] // Search for contacts using an account.
    @objc optional func setName(_ name: String!) // The name of a LDAP account.
    @objc optional func setUserName(_ userName: String!) // The user name used to connect to a LDAP account.
    @objc optional func setPassword(_ password: String!) // The password for a LDAP account (write-only).
    @objc optional func setServer(_ server: String!) // The server used to connect to a LDAP account.
    @objc optional func setPort(_ port: Int) // The port used to connect to a LDAP account.
    @objc optional func setUseSsl(_ useSsl: Bool) // Indicates whether a SSL connection is used for a LDAP account.
    @objc optional func setNeedsAuthentication(_ needsAuthentication: Bool) // Indicates whether authentication is needed for  connecting to a LDAP server.
    @objc optional func setUseKerberosAuthentication(_ useKerberosAuthentication: Bool) // Indicates whether kerberos authentication is used for a LDAP account.
    @objc optional func setPrincipal(_ principal: String!) // The GSSAPI principal name (Kerberos v5).
    @objc optional func setSearchTimeout(_ searchTimeout: Int) // The number of seconds to wait before timing out.
    @objc optional func setSearchBase(_ searchBase: String!) // The search base of a LDAP account.
    @objc optional func setUseSimpleSearch(_ useSimpleSearch: Bool) // Indicates whether the server should use simplied search string.
    @objc optional func setMaximumEntries(_ maximumEntries: Int) // The maximum number of entires to get from the server for a LDAP account.
}
extension SBObject: MicrosoftOutlookLdapAccount {}

// MARK: MicrosoftOutlookDelegatedAccount
@objc public protocol MicrosoftOutlookDelegatedAccount: MicrosoftOutlookExchangeAccount {
    @objc optional var exchangeAccount: MicrosoftOutlookExchangeAccount { get } // The exchange account which this account belongs to.
}
extension SBObject: MicrosoftOutlookDelegatedAccount {}

// MARK: MicrosoftOutlookOtherUsersFolderAccount
@objc public protocol MicrosoftOutlookOtherUsersFolderAccount: MicrosoftOutlookExchangeAccount {
    @objc optional var exchangeAccount: MicrosoftOutlookExchangeAccount { get } // The exchange account which this account belongs to.
    @objc optional var inboxOpen: Bool { get } // Indicates whether the other users Inbox is open.
    @objc optional var addressBookOpen: Bool { get } // Indicates whether the other users Address Book is open.
    @objc optional var calendarOpen: Bool { get } // Indicates whether the other users Calendar is open.
    @objc optional func setInboxOpen(_ inboxOpen: Bool) // Indicates whether the other users Inbox is open.
    @objc optional func setAddressBookOpen(_ addressBookOpen: Bool) // Indicates whether the other users Address Book is open.
    @objc optional func setCalendarOpen(_ calendarOpen: Bool) // Indicates whether the other users Calendar is open.
}
extension SBObject: MicrosoftOutlookOtherUsersFolderAccount {}

// MARK: MicrosoftOutlookRecipient
@objc public protocol MicrosoftOutlookRecipient: MicrosoftOutlookItem {
    @objc optional var emailAddress: [AnyHashable : Any] { get } // The e-mail address of a recipient.
    @objc optional var type: MicrosoftOutlookRecipientType { get } // The type of a recipient (to, cc, bcc).
    @objc optional func setEmailAddress(_ emailAddress: [AnyHashable : Any]!) // The e-mail address of a recipient.
}
extension SBObject: MicrosoftOutlookRecipient {}

// MARK: MicrosoftOutlookMailFolder
@objc public protocol MicrosoftOutlookMailFolder: MicrosoftOutlookFolder {
    @objc optional func messages() -> SBElementArray
    @objc optional func incomingMessages() -> SBElementArray
    @objc optional func outgoingMessages() -> SBElementArray
    @objc optional func meetingMessages() -> SBElementArray
    @objc optional var unreadCount: Int { get } // The number of unread messages in a folder.
}
extension SBObject: MicrosoftOutlookMailFolder {}

// MARK: MicrosoftOutlookMessage
@objc public protocol MicrosoftOutlookMessage: MicrosoftOutlookTodoableObject {
    @objc optional func recipients() -> SBElementArray
    @objc optional func toRecipients() -> SBElementArray
    @objc optional func ccRecipients() -> SBElementArray
    @objc optional func bccRecipients() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var subject: String { get } // The subject of a message.
    @objc optional var content: String { get } // The HTML content of a message.
    @objc optional var plainTextContent: String { get } // The content of a message as plain text.
    @objc optional var timeReceived: Date { get } // The time at which a message was received.
    @objc optional var timeSent: Date { get } // The time at which a message was sent.
    @objc optional var sender: [AnyHashable : Any] { get } // The e-mail address of the sender of a message.
    @objc optional var priority: MicrosoftOutlookPriority { get } // The priority of a message.
    @objc optional var headers: String { get } // The header of a message.
    @objc optional var source: String { get } // The raw source text of a message.
    @objc optional var hasHtml: Bool { get } // Indicates whether a message has html text?
    @objc optional var modificationDate: Date { get } // The date on which a message was last modified.
    @objc optional var smimeSigned: Bool { get } // Indicates whether a message is signed?
    @objc optional var smimeEncrypted: Bool { get } // Indicates whether a message is encrypted?
    @objc optional var isMeeting: Bool { get } // Indicates whether  a message is a meeting invite/update?
    @objc optional var folder: MicrosoftOutlookMailFolder { get } // The folder in which a message is filed.
    @objc optional var account: MicrosoftOutlookAccount { get } // The account associated with a message.
    @objc optional var isRead: Bool { get } // Indicates whether a message has been read.
    @objc optional var isMarkedForDelete: Bool { get } // Indicates whether a message is marked for delete.
    @objc optional var repliedTo: Bool { get } // Indicates whether a message has been replied to.
    @objc optional var repliedToAll: Bool { get } // Indicates whether a message has been replied to all.
    @objc optional var forwarded: Bool { get } // Indicates whether a message has been forwarded.
    @objc optional var redirected: Bool { get } // Indicates whether a message has been redirected.
    @objc optional var edited: Bool { get } // Indicates whether a message has been edited.
    @objc optional var exchangeId: String { get } // The exchange identifier of a message (only applicable for messages belonging to exchange accounts).
    @objc optional var imapUid: Int { get } // The IMAP UID of a message (only applicable for messages belonging to IMAP accounts).
    @objc optional var isPartiallyDownloaded: Bool { get } // Indicates whether a message is partially downloaded.
    @objc optional var isRightsProtected: Bool { get } // Indicates whether a message is rights protected.
    @objc optional var isReadReceiptRequested: Bool { get } // Indicates whether the message has a read receipt requested.
    @objc optional var sendReadReceipt: Bool { get } // Indicates whether a read receipt response can be sent for a message. This needs to be set before marking a message as read.
    @objc optional func permanentlyDelete() // Permanently delete a message or folder i.e. without moving it to the deleted items folder (See delete command in the Standard Suite).
    @objc optional func send() // Send e-mail messages.
    @objc optional func replyToOpeningWindow(_ openingWindow: Bool, replyToAll: Bool) -> MicrosoftOutlookMessage // Create a reply message.
    @objc optional func forwardTo(_ to: String!, openingWindow: Bool) -> MicrosoftOutlookMessage // Creates a forwarded message.
    @objc optional func setSubject(_ subject: String!) // The subject of a message.
    @objc optional func setContent(_ content: String!) // The HTML content of a message.
    @objc optional func setPlainTextContent(_ plainTextContent: String!) // The content of a message as plain text.
    @objc optional func setSender(_ sender: [AnyHashable : Any]!) // The e-mail address of the sender of a message.
    @objc optional func setPriority(_ priority: MicrosoftOutlookPriority) // The priority of a message.
    @objc optional func setSource(_ source: String!) // The raw source text of a message.
    @objc optional func setSmimeSigned(_ smimeSigned: Bool) // Indicates whether a message is signed?
    @objc optional func setSmimeEncrypted(_ smimeEncrypted: Bool) // Indicates whether a message is encrypted?
    @objc optional func setAccount(_ account: MicrosoftOutlookAccount!) // The account associated with a message.
    @objc optional func setIsRead(_ isRead: Bool) // Indicates whether a message has been read.
    @objc optional func setIsMarkedForDelete(_ isMarkedForDelete: Bool) // Indicates whether a message is marked for delete.
    @objc optional func setSendReadReceipt(_ sendReadReceipt: Bool) // Indicates whether a read receipt response can be sent for a message. This needs to be set before marking a message as read.
}
extension SBObject: MicrosoftOutlookMessage {}

// MARK: MicrosoftOutlookIncomingMessage
@objc public protocol MicrosoftOutlookIncomingMessage: MicrosoftOutlookMessage {
}
extension SBObject: MicrosoftOutlookIncomingMessage {}

// MARK: MicrosoftOutlookOutgoingMessage
@objc public protocol MicrosoftOutlookOutgoingMessage: MicrosoftOutlookMessage {
    @objc optional var wasSent: Bool { get } // Indicates whether a outgoing message has been sent.
}
extension SBObject: MicrosoftOutlookOutgoingMessage {}

// MARK: MicrosoftOutlookToRecipient
@objc public protocol MicrosoftOutlookToRecipient: MicrosoftOutlookRecipient {
}
extension SBObject: MicrosoftOutlookToRecipient {}

// MARK: MicrosoftOutlookCcRecipient
@objc public protocol MicrosoftOutlookCcRecipient: MicrosoftOutlookRecipient {
}
extension SBObject: MicrosoftOutlookCcRecipient {}

// MARK: MicrosoftOutlookBccRecipient
@objc public protocol MicrosoftOutlookBccRecipient: MicrosoftOutlookRecipient {
}
extension SBObject: MicrosoftOutlookBccRecipient {}

// MARK: MicrosoftOutlookMeetingMessage
@objc public protocol MicrosoftOutlookMeetingMessage: MicrosoftOutlookIncomingMessage {
    @objc optional var type: MicrosoftOutlookMeetingMessageType { get } // The type of the meeting message (request, response, etc.)
    @objc optional var meeting: MicrosoftOutlookCalendarEvent { get } // The meeting data from the meeting message.
    @objc optional func acceptInviteSendingResponse(_ sendingResponse: Bool, comment: String!) // Accepts a given incoming meeting message.
    @objc optional func acceptTentativelyInviteSendingResponse(_ sendingResponse: Bool, comment: String!) // Accepts tentatively a given incoming meeting message.
    @objc optional func declineInviteSendingResponse(_ sendingResponse: Bool, comment: String!) // Declines a given incoming meeting message.
}
extension SBObject: MicrosoftOutlookMeetingMessage {}

// MARK: MicrosoftOutlookAddressBook
@objc public protocol MicrosoftOutlookAddressBook: MicrosoftOutlookFolder {
    @objc optional func contacts() -> SBElementArray
    @objc optional func groups() -> SBElementArray
    @objc optional var directorySource: MicrosoftOutlookDirectorySource { get } // The directory source for this folder. Use it with the Contacts Panel to run searches
}
extension SBObject: MicrosoftOutlookAddressBook {}

// MARK: MicrosoftOutlookContact
@objc public protocol MicrosoftOutlookContact: MicrosoftOutlookTodoableObject {
    @objc optional var firstName: String { get } // The first name of a contact.
    @objc optional var lastName: String { get } // The last name of a contact.
    @objc optional var middleName: String { get } // The middle name of a contact.
    @objc optional var displayName: String { get } // The display name of a contact.
    @objc optional var title: String { get } // The title for a contact.
    @objc optional var nickname: String { get } // The nickname of a contact.
    @objc optional var suffix: String { get } // The name suffix of a contact.
    @objc optional var phone: String { get } // The default phone number of a contact.
    @objc optional var homePhoneNumber: String { get } // The home phone number of a contact.
    @objc optional var otherHomePhoneNumber: String { get } // The second home phone number of a contact.
    @objc optional var homeFaxNumber: String { get } // The home fax number of a contact.
    @objc optional var businessPhoneNumber: String { get } // The business phone number of a contact.
    @objc optional var otherBusinessPhoneNumber: String { get } // The second business phone number of a contact.
    @objc optional var businessFaxNumber: String { get } // The business fax number of a contact.
    @objc optional var pagerNumber: String { get } // The pager number of a contact.
    @objc optional var mobileNumber: String { get } // The cell phone number of a contact.
    @objc optional var emailAddresses: [[AnyHashable : Any]] { get } // The e-mail addresses of a contact.
    @objc optional var IMAddresses: [[AnyHashable : Any]] { get } // The instant messaging addresses of a contact.
    @objc optional var office: String { get } // The office of a contact.
    @objc optional var company: String { get } // The name of the company of a contact.
    @objc optional var jobTitle: String { get } // The job title of a contact.
    @objc optional var department: String { get } // The department of a contact.
    @objc optional var assistantPhoneNumber: String { get } // The phone number of the assistant of a contact.
    @objc optional var age: Int { get } // The age of a contact.
    @objc optional var anniversary: Date { get } // The anniversary of a contact.
    @objc optional var astrologySign: String { get } // The astrological sign of a contact.
    @objc optional var birthday: Date { get } // The birthday of a contact.
    @objc optional var bloodType: String { get } // The blood group of a contact.
    @objc optional var objectDescription: String { get } // The notes of a contact.
    @objc optional var homeStreetAddress: String { get } // The home street address of a contact.
    @objc optional var homeCity: String { get } // The home city of a contact
    @objc optional var homeState: String { get } // The home state of a contact.
    @objc optional var homeCountry: String { get } // The home country of a contact.
    @objc optional var homeZip: String { get } // The home zip code of a contact.
    @objc optional var businessStreetAddress: String { get } // The business street address of a contact.
    @objc optional var businessCity: String { get } // The business city of a contact
    @objc optional var businessState: String { get } // The business state of a contact.
    @objc optional var businessCountry: String { get } // The business country of a contact.
    @objc optional var businessZip: String { get } // The business zip code of a contact.
    @objc optional var homeWebPage: String { get } // The home web page of a contact.
    @objc optional var businessWebPage: String { get } // The business web page of a contact.
    @objc optional var spouse: String { get } // The name of the spouse of a contact.
    @objc optional var children: [String] { get } // The list of children of a contact.
    @objc optional var interests: String { get } // The interests of a contact.
    @objc optional var image: Any { get } // The image of a contact.
    @objc optional var isJapaneseContact: Bool { get } // Indicates whether a contact is in Japanese format?
    @objc optional var firstNameFurigana: String { get } // The furigana for a contact's first name (Japanese format contact only).
    @objc optional var lastNameFurigana: String { get } // The furigana for a contact's last name (Japanese format contact only).
    @objc optional var middleNameFurigana: String { get } // The furigana for a contact's middle name (Japanese format contact only).
    @objc optional var childrenFurigana: [String] { get } // The furigana name of the children of a contact (Japanese format contact only).
    @objc optional var spouseFurigana: String { get } // The furigana name of the spouse of a contact (Japanese format contact only).
    @objc optional var companyFurigana: String { get } // The furigana for the company of a contact (Japanese format contact only).
    @objc optional var customFieldOne: String { get } // The first custom field of a contact.
    @objc optional var customFieldTwo: String { get } // The first custom field of a contact.
    @objc optional var customFieldThree: String { get } // The third custom field of a contact.
    @objc optional var customFieldFour: String { get } // The fourth custom field of a contact.
    @objc optional var customFieldFive: String { get } // The fifth custom field of a contact.
    @objc optional var customFieldSix: String { get } // The sixth custom field of a contact.
    @objc optional var customFieldSeven: String { get } // The seventh custom field of a contact.
    @objc optional var customFieldEight: String { get } // The eigth custom field of a contact.
    @objc optional var customPhone1: String { get } // The first custom phone field of a contact.
    @objc optional var customPhone2: String { get } // The second custom phone field of a contact.
    @objc optional var customPhone3: String { get } // The third custom phone field of a contact.
    @objc optional var customPhone4: String { get } // The fourth custom phone field of a contact.
    @objc optional var customDateFieldOne: Date { get } // The first custom date field of a contact.
    @objc optional var customDateFieldTwo: Date { get } // The second custom date field of a contact.
    @objc optional var addressBook: MicrosoftOutlookAddressBook { get } // The address book containing a contact.
    @objc optional var exchangeId: String { get } // The exchange identifier of a contact (only applicable for contacts belonging to exchange accounts).
    @objc optional var modificationDate: Date { get } // The date on which a contact was last modified.
    @objc optional var note: String { get } // The HTML notes for a contact.
    @objc optional var plainTextNote: String { get } // The notes for a contact as plain text.
    @objc optional var displayType: MicrosoftOutlookContactDisplayType { get } // The type of contact
    @objc optional var vcardData: String { get } // The information of a contact in vCard format. Use the 'import vcf' command to create a contact from vCard information.
    @objc optional func setFirstName(_ firstName: String!) // The first name of a contact.
    @objc optional func setLastName(_ lastName: String!) // The last name of a contact.
    @objc optional func setMiddleName(_ middleName: String!) // The middle name of a contact.
    @objc optional func setTitle(_ title: String!) // The title for a contact.
    @objc optional func setNickname(_ nickname: String!) // The nickname of a contact.
    @objc optional func setSuffix(_ suffix: String!) // The name suffix of a contact.
    @objc optional func setPhone(_ phone: String!) // The default phone number of a contact.
    @objc optional func setHomePhoneNumber(_ homePhoneNumber: String!) // The home phone number of a contact.
    @objc optional func setOtherHomePhoneNumber(_ otherHomePhoneNumber: String!) // The second home phone number of a contact.
    @objc optional func setHomeFaxNumber(_ homeFaxNumber: String!) // The home fax number of a contact.
    @objc optional func setBusinessPhoneNumber(_ businessPhoneNumber: String!) // The business phone number of a contact.
    @objc optional func setOtherBusinessPhoneNumber(_ otherBusinessPhoneNumber: String!) // The second business phone number of a contact.
    @objc optional func setBusinessFaxNumber(_ businessFaxNumber: String!) // The business fax number of a contact.
    @objc optional func setPagerNumber(_ pagerNumber: String!) // The pager number of a contact.
    @objc optional func setMobileNumber(_ mobileNumber: String!) // The cell phone number of a contact.
    @objc optional func setEmailAddresses(_ emailAddresses: [[AnyHashable : Any]]!) // The e-mail addresses of a contact.
    @objc optional func setIMAddresses(_ IMAddresses: [[AnyHashable : Any]]!) // The instant messaging addresses of a contact.
    @objc optional func setOffice(_ office: String!) // The office of a contact.
    @objc optional func setCompany(_ company: String!) // The name of the company of a contact.
    @objc optional func setJobTitle(_ jobTitle: String!) // The job title of a contact.
    @objc optional func setDepartment(_ department: String!) // The department of a contact.
    @objc optional func setAssistantPhoneNumber(_ assistantPhoneNumber: String!) // The phone number of the assistant of a contact.
    @objc optional func setAge(_ age: Int) // The age of a contact.
    @objc optional func setAnniversary(_ anniversary: Date!) // The anniversary of a contact.
    @objc optional func setAstrologySign(_ astrologySign: String!) // The astrological sign of a contact.
    @objc optional func setBirthday(_ birthday: Date!) // The birthday of a contact.
    @objc optional func setBloodType(_ bloodType: String!) // The blood group of a contact.
    @objc optional func setObjectDescription(_ objectDescription: String!) // The notes of a contact.
    @objc optional func setHomeStreetAddress(_ homeStreetAddress: String!) // The home street address of a contact.
    @objc optional func setHomeCity(_ homeCity: String!) // The home city of a contact
    @objc optional func setHomeState(_ homeState: String!) // The home state of a contact.
    @objc optional func setHomeCountry(_ homeCountry: String!) // The home country of a contact.
    @objc optional func setHomeZip(_ homeZip: String!) // The home zip code of a contact.
    @objc optional func setBusinessStreetAddress(_ businessStreetAddress: String!) // The business street address of a contact.
    @objc optional func setBusinessCity(_ businessCity: String!) // The business city of a contact
    @objc optional func setBusinessState(_ businessState: String!) // The business state of a contact.
    @objc optional func setBusinessCountry(_ businessCountry: String!) // The business country of a contact.
    @objc optional func setBusinessZip(_ businessZip: String!) // The business zip code of a contact.
    @objc optional func setHomeWebPage(_ homeWebPage: String!) // The home web page of a contact.
    @objc optional func setBusinessWebPage(_ businessWebPage: String!) // The business web page of a contact.
    @objc optional func setSpouse(_ spouse: String!) // The name of the spouse of a contact.
    @objc optional func setChildren(_ children: [String]!) // The list of children of a contact.
    @objc optional func setInterests(_ interests: String!) // The interests of a contact.
    @objc optional func setImage(_ image: Any!) // The image of a contact.
    @objc optional func setIsJapaneseContact(_ isJapaneseContact: Bool) // Indicates whether a contact is in Japanese format?
    @objc optional func setFirstNameFurigana(_ firstNameFurigana: String!) // The furigana for a contact's first name (Japanese format contact only).
    @objc optional func setLastNameFurigana(_ lastNameFurigana: String!) // The furigana for a contact's last name (Japanese format contact only).
    @objc optional func setMiddleNameFurigana(_ middleNameFurigana: String!) // The furigana for a contact's middle name (Japanese format contact only).
    @objc optional func setChildrenFurigana(_ childrenFurigana: [String]!) // The furigana name of the children of a contact (Japanese format contact only).
    @objc optional func setSpouseFurigana(_ spouseFurigana: String!) // The furigana name of the spouse of a contact (Japanese format contact only).
    @objc optional func setCompanyFurigana(_ companyFurigana: String!) // The furigana for the company of a contact (Japanese format contact only).
    @objc optional func setCustomFieldOne(_ customFieldOne: String!) // The first custom field of a contact.
    @objc optional func setCustomFieldTwo(_ customFieldTwo: String!) // The first custom field of a contact.
    @objc optional func setCustomFieldThree(_ customFieldThree: String!) // The third custom field of a contact.
    @objc optional func setCustomFieldFour(_ customFieldFour: String!) // The fourth custom field of a contact.
    @objc optional func setCustomFieldFive(_ customFieldFive: String!) // The fifth custom field of a contact.
    @objc optional func setCustomFieldSix(_ customFieldSix: String!) // The sixth custom field of a contact.
    @objc optional func setCustomFieldSeven(_ customFieldSeven: String!) // The seventh custom field of a contact.
    @objc optional func setCustomFieldEight(_ customFieldEight: String!) // The eigth custom field of a contact.
    @objc optional func setCustomPhone1(_ customPhone1: String!) // The first custom phone field of a contact.
    @objc optional func setCustomPhone2(_ customPhone2: String!) // The second custom phone field of a contact.
    @objc optional func setCustomPhone3(_ customPhone3: String!) // The third custom phone field of a contact.
    @objc optional func setCustomPhone4(_ customPhone4: String!) // The fourth custom phone field of a contact.
    @objc optional func setCustomDateFieldOne(_ customDateFieldOne: Date!) // The first custom date field of a contact.
    @objc optional func setCustomDateFieldTwo(_ customDateFieldTwo: Date!) // The second custom date field of a contact.
    @objc optional func setNote(_ note: String!) // The HTML notes for a contact.
    @objc optional func setPlainTextNote(_ plainTextNote: String!) // The notes for a contact as plain text.
    @objc optional func setDisplayType(_ displayType: MicrosoftOutlookContactDisplayType) // The type of contact
}
extension SBObject: MicrosoftOutlookContact {}

// MARK: MicrosoftOutlookGroup
@objc public protocol MicrosoftOutlookGroup: MicrosoftOutlookTodoableObject {
    @objc optional var name: String { get } // The name of a group.
    @objc optional var members: [[AnyHashable : Any]] { get } // The member of a group.
    @objc optional var addressBook: MicrosoftOutlookAddressBook { get } // The address book containing a group.
    @objc optional var note: String { get } // The notes for a group.
    @objc optional var plainTextNote: String { get } // The notes for a group as plain text.
    @objc optional var suppressMemberNames: Bool { get } // Indicates whether the members names are suppressed when messages are to a group.
    @objc optional var exchangeId: String { get } // The exchange identifier of a group (only applicable for groups belonging to exchange accounts).
    @objc optional var modificationDate: Date { get } // The date on which a group was last modified.
    @objc optional func expandExchangeAccount(_ exchangeAccount: MicrosoftOutlookExchangeAccount!) -> [Any] // Queries DL expansion information for a distribution list.
    @objc optional func setName(_ name: String!) // The name of a group.
    @objc optional func setMembers(_ members: [[AnyHashable : Any]]!) // The member of a group.
    @objc optional func setNote(_ note: String!) // The notes for a group.
    @objc optional func setPlainTextNote(_ plainTextNote: String!) // The notes for a group as plain text.
    @objc optional func setSuppressMemberNames(_ suppressMemberNames: Bool) // Indicates whether the members names are suppressed when messages are to a group.
}
extension SBObject: MicrosoftOutlookGroup {}

// MARK: MicrosoftOutlookCalendar
@objc public protocol MicrosoftOutlookCalendar: MicrosoftOutlookFolder {
    @objc optional func calendarEvents() -> SBElementArray
}
extension SBObject: MicrosoftOutlookCalendar {}

// MARK: MicrosoftOutlookCalendarEvent
@objc public protocol MicrosoftOutlookCalendarEvent: MicrosoftOutlookCategorizableObject {
    @objc optional func attendees() -> SBElementArray
    @objc optional func requiredAttendees() -> SBElementArray
    @objc optional func optionalAttendees() -> SBElementArray
    @objc optional func resourceAttendees() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var subject: String { get } // The subject of an event.
    @objc optional var startTime: Date { get } // The time at which an event begins.
    @objc optional var endTime: Date { get } // The time at which an event ends.
    @objc optional var location: String { get } // The location of an event.
    @objc optional var content: String { get } // The HTML description of the event.
    @objc optional var plainTextContent: String { get } // The description of the event as plain text.
    @objc optional var hasHtml: Bool { get } // Indicates whether the description of the event has html text?
    @objc optional var allDayFlag: Bool { get } // A flag for whether or not an event is an all day event.
    @objc optional var hasReminder: Bool { get } // Indicates whether or not an event has a reminder.
    @objc optional var reminderTime: Int { get } // The number of minutes from the start time of an event when a reminder will fire (if it has one).
    @objc optional var freeBusyStatus: MicrosoftOutlookFreeBusyStatus { get } // The free/busy status for an event.
    @objc optional var exchangeId: String { get } // The exchange identifier of an event (only applicable for events belonging to exchange accounts).
    @objc optional var modificationDate: Date { get } // The date an event was last modified on.
    @objc optional var recurrence: Any { get } // The calendar recurrence.
    @objc optional var isRecurring: Bool { get } // Indicates whehter an event is part of a recurring series of events.
    @objc optional var isOccurrence: Bool { get } // Indicates whether an event is an occurrence of a recurring series.
    @objc optional var recurrenceId: Date { get } // The recurrence id of an event (the date at which the recurring event occurs).
    @objc optional var master: MicrosoftOutlookCalendarEvent { get } // The master event for an event that is an exception from a recurring series.
    @objc optional var isPrivate: Bool { get } // Indicates whether an event is private.
    @objc optional var calendar: MicrosoftOutlookCalendar { get } // The calendar folder in which an event is filed.
    @objc optional var account: MicrosoftOutlookAccount { get } // The account associated with an event.
    @objc optional var organizer: String { get } // The organizer of the meeting.
    @objc optional var timezone: [AnyHashable : Any] { get } // The timezone of an event.
    @objc optional var requestResponses: Bool { get } // Indicates whether a response is requested from the attendees of the meeting.
    @objc optional var icalendarData: String { get } // The information of an event in iCalendar format. Use the 'import ics' command to create an event from iCalendar information.
    @objc optional func getOccurrenceOfAt(_ at: Date!) -> Any // Gets an occurrence of a calendar event specified by date.
    @objc optional func getLockedOccurrenceOfAt(_ at: Date!) -> Any // Gets an occurrence of a calendar event specified by date with the syncing blocked until meeting is sent.
    @objc optional func sendMeetingFromAccount(_ fromAccount: MicrosoftOutlookAccount!) // Send meeting invites/updates.
    @objc optional func cancelMeeting() // Cancel meeting and send out cancellations.
    @objc optional func acceptMeetingComment(_ comment: String!, sendingResponse: Bool) // Accept meeting and send meeting response when needed.
    @objc optional func acceptTentativelyMeetingComment(_ comment: String!, sendingResponse: Bool) // Accept tentatively meeting and send meeting response when needed.
    @objc optional func declineMeetingComment(_ comment: String!, sendingResponse: Bool) // Decline meeting and send meeting response when needed.
    @objc optional func replyToOpeningWindow(_ openingWindow: Bool, replyToAll: Bool) -> MicrosoftOutlookMessage // Create a reply message to a meeting.
    @objc optional func forwardTo(_ to: String!, openingWindow: Bool) -> MicrosoftOutlookMessage // Creates a forwarded meeting message.
    @objc optional func setSubject(_ subject: String!) // The subject of an event.
    @objc optional func setStartTime(_ startTime: Date!) // The time at which an event begins.
    @objc optional func setEndTime(_ endTime: Date!) // The time at which an event ends.
    @objc optional func setLocation(_ location: String!) // The location of an event.
    @objc optional func setContent(_ content: String!) // The HTML description of the event.
    @objc optional func setPlainTextContent(_ plainTextContent: String!) // The description of the event as plain text.
    @objc optional func setAllDayFlag(_ allDayFlag: Bool) // A flag for whether or not an event is an all day event.
    @objc optional func setHasReminder(_ hasReminder: Bool) // Indicates whether or not an event has a reminder.
    @objc optional func setReminderTime(_ reminderTime: Int) // The number of minutes from the start time of an event when a reminder will fire (if it has one).
    @objc optional func setFreeBusyStatus(_ freeBusyStatus: MicrosoftOutlookFreeBusyStatus) // The free/busy status for an event.
    @objc optional func setRecurrence(_ recurrence: Any!) // The calendar recurrence.
    @objc optional func setIsPrivate(_ isPrivate: Bool) // Indicates whether an event is private.
    @objc optional func setTimezone(_ timezone: [AnyHashable : Any]!) // The timezone of an event.
    @objc optional func setRequestResponses(_ requestResponses: Bool) // Indicates whether a response is requested from the attendees of the meeting.
}
extension SBObject: MicrosoftOutlookCalendarEvent {}

// MARK: MicrosoftOutlookAttendee
@objc public protocol MicrosoftOutlookAttendee: MicrosoftOutlookItem {
    @objc optional var emailAddress: [AnyHashable : Any] { get } // The e-mail address of an attendee.
    @objc optional var type: MicrosoftOutlookAttendeeType { get } // The type of a recipient (required, optional, resource)
    @objc optional var status: MicrosoftOutlookAcceptanceStatus { get } // Attendee acceptance status.
    @objc optional var addressType: MicrosoftOutlookAttendeeAddressType { get } // The address type of a recipient (unresolved address, contact address, public group address, private group address)
    @objc optional func setEmailAddress(_ emailAddress: [AnyHashable : Any]!) // The e-mail address of an attendee.
}
extension SBObject: MicrosoftOutlookAttendee {}

// MARK: MicrosoftOutlookRequiredAttendee
@objc public protocol MicrosoftOutlookRequiredAttendee: MicrosoftOutlookAttendee {
}
extension SBObject: MicrosoftOutlookRequiredAttendee {}

// MARK: MicrosoftOutlookOptionalAttendee
@objc public protocol MicrosoftOutlookOptionalAttendee: MicrosoftOutlookAttendee {
}
extension SBObject: MicrosoftOutlookOptionalAttendee {}

// MARK: MicrosoftOutlookResourceAttendee
@objc public protocol MicrosoftOutlookResourceAttendee: MicrosoftOutlookAttendee {
}
extension SBObject: MicrosoftOutlookResourceAttendee {}

// MARK: MicrosoftOutlookTaskFolder
@objc public protocol MicrosoftOutlookTaskFolder: MicrosoftOutlookFolder {
    @objc optional func tasks() -> SBElementArray
}
extension SBObject: MicrosoftOutlookTaskFolder {}

// MARK: MicrosoftOutlookTask
@objc public protocol MicrosoftOutlookTask: MicrosoftOutlookTodoableObject {
    @objc optional var name: String { get } // The name of a task.
    @objc optional var content: String { get } // The HTML notes of a task.
    @objc optional var plainTextContent: String { get } // The notes of a task as plain text.
    @objc optional var priority: MicrosoftOutlookPriority { get } // The priority of a task.
    @objc optional var folder: MicrosoftOutlookTaskFolder { get } // The folder in which a task is filed.
    @objc optional var exchangeId: String { get } // The exchange identifier of a task (only applicable for tasks belonging to exchange accounts).
    @objc optional var modificationDate: Date { get } // The date a task was last modified on.
    @objc optional var icalendarData: String { get } // The information of a task in iCalendar format. Use the 'import ics' command to create a task from iCalendar information.
    @objc optional func setName(_ name: String!) // The name of a task.
    @objc optional func setContent(_ content: String!) // The HTML notes of a task.
    @objc optional func setPlainTextContent(_ plainTextContent: String!) // The notes of a task as plain text.
    @objc optional func setPriority(_ priority: MicrosoftOutlookPriority) // The priority of a task.
}
extension SBObject: MicrosoftOutlookTask {}

// MARK: MicrosoftOutlookNoteFolder
@objc public protocol MicrosoftOutlookNoteFolder: MicrosoftOutlookFolder {
    @objc optional func notes() -> SBElementArray
}
extension SBObject: MicrosoftOutlookNoteFolder {}

// MARK: MicrosoftOutlookNote
@objc public protocol MicrosoftOutlookNote: MicrosoftOutlookCategorizableObject {
    @objc optional var name: String { get } // The name of a note.
    @objc optional var content: String { get } // The HTML content of a note.
    @objc optional var plainTextContent: String { get } // The content of a note as plain text.
    @objc optional var folder: MicrosoftOutlookNoteFolder { get } // The folder in which a note is filed.
    @objc optional var creationDate: Date { get } // The date a note was created on.
    @objc optional var exchangeId: String { get } // The exchange identifier of a note (only applicable for notes belonging to exchange accounts).
    @objc optional var modificationDate: Date { get } // The date a note was last modified on.
    @objc optional var icalendarData: String { get } // The information of a note in iCalendar format. Use the 'import ics' command to create a note from iCalendar information.
    @objc optional func setName(_ name: String!) // The name of a note.
    @objc optional func setContent(_ content: String!) // The HTML content of a note.
    @objc optional func setPlainTextContent(_ plainTextContent: String!) // The content of a note as plain text.
}
extension SBObject: MicrosoftOutlookNote {}

// MARK: MicrosoftOutlookSignature
@objc public protocol MicrosoftOutlookSignature: MicrosoftOutlookObject {
    @objc optional var name: String { get } // The name of a signature.
    @objc optional var content: String { get } // The HTML content of a signature.
    @objc optional var plainTextContent: String { get } // The content of a signature as plain text.
    @objc optional var includeInRandom: Bool { get } // This field is no longer in use.
    @objc optional func setName(_ name: String!) // The name of a signature.
    @objc optional func setContent(_ content: String!) // The HTML content of a signature.
    @objc optional func setPlainTextContent(_ plainTextContent: String!) // The content of a signature as plain text.
    @objc optional func setIncludeInRandom(_ includeInRandom: Bool) // This field is no longer in use.
}
extension SBObject: MicrosoftOutlookSignature {}

