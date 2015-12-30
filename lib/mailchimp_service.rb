class MailchimpService
  def initialize(user)
    @user = user
  end

  def subscribe
    list_id = ENV['MAILCHIMP_LIST_ID']
    gb = Gibbon::API.new

    gb.lists.subscribe({
      id: list_id,
      email: {email: @user.email},
      double_optin: false,
      update_existing: true
    })
  end
end
