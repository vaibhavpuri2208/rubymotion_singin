class NextEventViewController < UIViewController

  DAYS_LEFT_TEXT = "(20 days left)"
  EVENT_NAME_TEXT = "November meeting"



  def init
    p 'Initialing the View Controller'
    super
    self
  end


  #def loadView
    #p 'loading view'
    #self.view = UIView.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    #self.view.backgroundColor = UIColor.whiteColor
  #end

  def viewDidLoad
    self.view.addSubview( imageViewWithHeader)
    self.view.addSubview( imageViewWithBackground )
    self.view.addSubview( imageViewTitleBackground )
    @next_event_name_label = labelWithNextEventName
    @days_left_label = labelWithDaysLeft

    self.view.addSubview(@next_event_name_label)
    self.view.addSubview(@days_left_label)

    @days_left_label.text = DAYS_LEFT_TEXT
    @next_event_name_label.text = EVENT_NAME_TEXT
    self.view.addSubview(buttonForSignIn)
    self.view.addSubview(buttonForSignUp)
  end

  def viewDidUnload
    super
    @next_event_name_label=nil
    @days_left_label=nil
  end


  def imageViewWithHeader
      header_image_view = UIImageView.alloc.initWithImage(UIImage.imageNamed('images/bgTitleBar.png'))
  end


  def imageViewWithBackground
      image_with_bg = UIImageView.alloc.initWithImage(UIImage.imageNamed('images/bgApp.png'))
      image_with_bg.frame = CGRectMake(0,64,320,396)
      image_with_bg
  end

  def imageViewTitleBackground
      title_background_image_view = UIImageView.alloc.initWithImage(UIImage.imageNamed('images/bgEventTitle.png'))
      title_background_image_view.frame = [[0,103],[320,103]]
      title_background_image_view
  end


  def labelWithNextEventName
    next_event_name_label = UILabel.alloc.initWithFrame([[25,130],[275,40]])

    next_event_name_label.font = UIFont.fontWithName("AmericanTypeWriter-CondensedBold", size:30)
    next_event_name_label.textColor = UIColor.whiteColor
    next_event_name_label.textAlignment = UITextAlignmentCenter
    next_event_name_label.backgroundColor = UIColor.clearColor
    next_event_name_label.shadowColor= UIColor.darkGrayColor
    next_event_name_label.shadowOffset= [-1,-1]
    next_event_name_label
  end

  def labelWithDaysLeft
    days_left_label = UILabel.alloc.initWithFrame([[25,240],[275,40]])
    days_left_label.font = UIFont.fontWithName("AmericanTypeWriter-CondensedBold", size:30)
    days_left_label.textColor = UIColor.whiteColor
    days_left_label.textAlignment = UITextAlignmentCenter
    days_left_label.backgroundColor = UIColor.clearColor
    days_left_label.shadowColor= UIColor.darkGrayColor
    days_left_label.shadowOffset= [-1,-1]
    days_left_label
  end

  def buttonForSignIn
    sign_in_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    sign_in_button.frame = [[15,280],[295,40]]
    sign_in_button.setTitle("I have an account, sign-in", forState:UIControlStateNormal)
    sign_in_button.setTitle("is Highlighted", forState:UIControlStateHighlighted)
    sign_in_button.titleLabel.font= UIFont.fontWithName("Helvetica-Light", size:18)
    sign_in_button.addTarget(self,action: 'sign_in:', forControlEvents: UIControlEventTouchUpInside )
    sign_in_button
  end

  def buttonForSignUp
    sign_in_button = UIButton.buttonWithType(UIButtonTypeCustom)
    sign_in_button.setBackgroundImage(UIImage.imageNamed('images/btnBrown.png'), forState: UIControlStateNormal)
    sign_in_button.frame = [[15,350],[295,40]]
    sign_in_button.setTitle("Don't have an account, signup", forState:UIControlStateNormal)
    sign_in_button.setTitle("is Highlighted", forState:UIControlStateHighlighted)
    sign_in_button.titleLabel.font= UIFont.fontWithName("Helvetica-Light", size:18)
    sign_in_button.addTarget(self,action: 'sign_up:', forControlEvents: UIControlEventTouchUpInside )
    sign_in_button
  end

  def sign_in(button)
    p "sign in button pressed#{button}"
  end
  
  def sign_up(button)
    p "sign up button pressed#{button}"
  end
  

  

end