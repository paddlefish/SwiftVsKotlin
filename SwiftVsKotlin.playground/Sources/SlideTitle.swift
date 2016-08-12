import Foundation

@objc(SlideTitle)
public class SlideTitle: NSObject {
	public static let sharedInstance = SlideTitle()

	override init() {
		
	}
	
	public func setTitle(title: String) {
		let distCenter = CFNotificationCenterGetDistributedCenter()
		let notificationName = "SlideFrame.Title" as CFString
		let data = title.uppercaseString as CFString
		let ptr = unsafeBitCast(data, UnsafePointer<Void>.self)
		CFNotificationCenterPostNotification(distCenter, notificationName, ptr, nil, true)
	}
	
	public func setSubTitle(title: String) {
		let distCenter = CFNotificationCenterGetDistributedCenter()
		let notificationName = "SlideFrame.SubTitle" as CFString
		let data = title as CFString
		let ptr = unsafeBitCast(data, UnsafePointer<Void>.self)
		CFNotificationCenterPostNotification(distCenter, notificationName, ptr, nil, true)
	}
}