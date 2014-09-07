require 'spec_helper'
describe '/devise/sessions/new.html.erb' do

  it 'includes org id in hidden field' do
    assign(:organization_id, 1)
    render
    rendered.should have_xpath("//input[@name = 'pending_organization_id'][@value='1']")
  end
end
