//
//  Walhalla.swift
//  Walhalla
//
//  Created by Kenichi Saito on 2/5/15.
//  Copyright (c) 2015 Kenichi Saito. All rights reserved.
//

import UIKit

public class Walhalla {
    
    public enum AnimationType {
        case BounceLeft
        case BounceRight
        case BounceUp
        case BounceDown
        case FadeIn
        case FadeOut
        case ZoomIn
        case ZoomOut
        case Pop
        case Stretch
        case Shake
    }
    
    public static func performAnimation(view: UIView, duration: NSTimeInterval, delay: NSTimeInterval, type: AnimationType) {
        switch type {
        case .BounceLeft: bounceLeft(view, duration: duration, delay: delay)
        case .BounceRight: bounceRight(view, duration: duration, delay: delay)
        case .BounceUp: bounceUp(view, duration: duration, delay: delay)
        case .BounceDown: bounceDown(view, duration: duration, delay: delay)
        case .FadeIn: fadeIn(view, duration: duration, delay: delay)
        case .FadeOut: fadeOut(view, duration: duration, delay: delay)
        case .ZoomIn: zoomIn(view, duration: duration, delay: delay)
        case .ZoomOut: zoomOut(view, duration: duration, delay: delay)
        case .Pop: pop(view, duration: duration, delay: delay)
        case .Stretch: stretch(view, duration: duration, delay: delay)
        case .Shake: shake(view, duration: duration, delay: delay)
        }
    }
}

public extension Walhalla {
    private static func bounceLeft(view: UIView, duration: NSTimeInterval, delay: NSTimeInterval) {
        view.transform = CGAffineTransformMakeTranslation(CGRectGetWidth(UIScreen.mainScreen().bounds), 0)
        UIView.animateKeyframesWithDuration(duration/4, delay: delay, options: UIViewKeyframeAnimationOptions(), animations: {
            view.transform = CGAffineTransformMakeTranslation(-10, 0)
            }, completion: {(finished: Bool) in
                UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                    view.transform = CGAffineTransformMakeTranslation(5, 0)
                    }, completion: {(finished: Bool) in
                        UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                            view.transform = CGAffineTransformMakeTranslation(-2, 0)
                            }, completion: {(finished: Bool) in
                                UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                                    view.transform = CGAffineTransformMakeTranslation(0, 0)
                                    }, completion: {(finished: Bool) in
                                })
                        })
                })
        })
    }
    
    private static func bounceRight(view: UIView, duration: NSTimeInterval, delay: NSTimeInterval) {
        view.transform = CGAffineTransformMakeTranslation(-CGRectGetWidth(UIScreen.mainScreen().bounds), 0)
        UIView.animateKeyframesWithDuration(duration/4, delay: delay, options: UIViewKeyframeAnimationOptions(), animations: {
            view.transform = CGAffineTransformMakeTranslation(10, 0)
            }, completion: {(finished: Bool) in
                UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                    view.transform = CGAffineTransformMakeTranslation(-5, 0)
                    }, completion: {(finished: Bool) in
                        UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                            view.transform = CGAffineTransformMakeTranslation(2, 0)
                            }, completion: {(finished: Bool) in
                                UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                                    view.transform = CGAffineTransformMakeTranslation(0, 0)
                                    }, completion: {(finished: Bool) in
                                })
                        })
                })
        })
    }
    
    private static func bounceUp(view: UIView, duration: NSTimeInterval, delay: NSTimeInterval) {
        view.transform = CGAffineTransformMakeTranslation(0, CGRectGetWidth(UIScreen.mainScreen().bounds))
        UIView.animateKeyframesWithDuration(duration/4, delay: delay, options: UIViewKeyframeAnimationOptions(), animations: {
            view.transform = CGAffineTransformMakeTranslation(0, 10)
            }, completion: {(finished: Bool) in
                UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                    view.transform = CGAffineTransformMakeTranslation(0, -5)
                    }, completion: {(finished: Bool) in
                        UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                            view.transform = CGAffineTransformMakeTranslation(0, 2)
                            }, completion: {(finished: Bool) in
                                UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                                    view.transform = CGAffineTransformMakeTranslation(0, 0)
                                    }, completion: {(finished: Bool) in
                                })
                        })
                })
        })
    }
    
    private static func bounceDown(view: UIView, duration: NSTimeInterval, delay: NSTimeInterval) {
        view.transform = CGAffineTransformMakeTranslation(0, -CGRectGetWidth(UIScreen.mainScreen().bounds))
        UIView.animateKeyframesWithDuration(duration/4, delay: delay, options: UIViewKeyframeAnimationOptions(), animations: {
            view.transform = CGAffineTransformMakeTranslation(0, -10)
            }, completion: {(finished: Bool) in
                UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                    view.transform = CGAffineTransformMakeTranslation(0, 5)
                    }, completion: {(finished: Bool) in
                        UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                            view.transform = CGAffineTransformMakeTranslation(0, -2)
                            }, completion: {(finished: Bool) in
                                UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                                    view.transform = CGAffineTransformMakeTranslation(0, 0)
                                    }, completion: {(finished: Bool) in
                                })
                        })
                })
        })
    }
    
    private static func fadeIn(view: UIView, duration: NSTimeInterval, delay: NSTimeInterval) {
        view.alpha = 0
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: UIViewKeyframeAnimationOptions(), animations: {
            view.alpha = 1
            }, completion: {(finished: Bool) in
        })
    }
    
    private static func fadeOut(view: UIView, duration: NSTimeInterval, delay: NSTimeInterval) {
        view.alpha = 1
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: UIViewKeyframeAnimationOptions(), animations: {
            view.alpha = 0
            }, completion: {(finished: Bool) in
        })
    }
    
    private static func zoomIn(view: UIView, duration: NSTimeInterval, delay: NSTimeInterval) {
        view.transform = CGAffineTransformMakeScale(1, 1)
        view.alpha = 1
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: UIViewKeyframeAnimationOptions(), animations: {
            view.transform = CGAffineTransformMakeScale(2, 2)
            view.alpha = 0
            }, completion: {(finished: Bool) in
        })
    }
    
    private static func zoomOut(view: UIView, duration: NSTimeInterval, delay: NSTimeInterval) {
        view.transform = CGAffineTransformMakeScale(2, 2)
        view.alpha = 0
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: UIViewKeyframeAnimationOptions(), animations: {
            view.transform = CGAffineTransformMakeScale(1, 1)
            view.alpha = 1
            }, completion: {(finished: Bool) in
        })
    }
    
    private static func pop(view: UIView, duration: NSTimeInterval, delay: NSTimeInterval) {
        view.transform = CGAffineTransformMakeScale(1, 1)
        UIView.animateKeyframesWithDuration(duration/3, delay: delay, options: UIViewKeyframeAnimationOptions(), animations: {
            view.transform = CGAffineTransformMakeScale(1.2, 1.2)
            }, completion: {(finished: Bool) in
                UIView.animateKeyframesWithDuration(duration/3, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                    view.transform = CGAffineTransformMakeScale(0.9, 0.9)
                    }, completion: {(finished: Bool) in
                        UIView.animateKeyframesWithDuration(duration/3, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                            view.transform = CGAffineTransformMakeScale(1, 1)
                            }, completion: {(finished: Bool) in
                        })
                })
        })
    }
    
    private static func stretch(view: UIView, duration: NSTimeInterval, delay: NSTimeInterval) {
        view.transform = CGAffineTransformMakeScale(1, 1)
        UIView.animateKeyframesWithDuration(duration/4, delay: delay, options: UIViewKeyframeAnimationOptions(), animations: {
            view.transform = CGAffineTransformMakeScale(1, 1.2)
            }, completion: {(finished: Bool) in
                UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                    view.transform = CGAffineTransformMakeScale(1.2, 0.9)
                    }, completion: {(finished: Bool) in
                        UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                            view.transform = CGAffineTransformMakeScale(0.9, 0.9)
                            }, completion: {(finished: Bool) in
                                UIView.animateKeyframesWithDuration(duration/4, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                                    view.transform = CGAffineTransformMakeScale(1, 1)
                                    }, completion: {(finished: Bool) in
                                })
                        })
                })
        })
    }
    
    private static func shake(view: UIView, duration: NSTimeInterval, delay: NSTimeInterval) {
        view.transform = CGAffineTransformMakeTranslation(0, 0)
        UIView.animateKeyframesWithDuration(duration/5, delay: delay, options: UIViewKeyframeAnimationOptions(), animations: {
            view.transform = CGAffineTransformMakeTranslation(30, 0)
            }, completion: {(finished: Bool) in
                UIView.animateKeyframesWithDuration(duration/5, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                    view.transform = CGAffineTransformMakeTranslation(-30, 0)
                    }, completion: {(finished: Bool) in
                        UIView.animateKeyframesWithDuration(duration/5, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                            view.transform = CGAffineTransformMakeTranslation(15, 0)
                            }, completion: {(finished: Bool) in
                                UIView.animateKeyframesWithDuration(duration/5, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                                    view.transform = CGAffineTransformMakeTranslation(-15, 0)
                                    }, completion: {(finished: Bool) in
                                        UIView.animateKeyframesWithDuration(duration/5, delay: 0, options: UIViewKeyframeAnimationOptions(), animations: {
                                            view.transform = CGAffineTransformMakeTranslation(0, 0)
                                            }, completion: {(finished: Bool) in
                                                
                                        })
                                })
                        })
                })
        })
    }
}