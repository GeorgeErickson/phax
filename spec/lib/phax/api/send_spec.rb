require 'spec_helper'

describe 'Send' do
  def send_fax(phone_numbers)
    send_res = Phax.fax(to: phone_numbers, string_data: 'test')
    status = Phax.fax_status(send_res.body['faxId'])
    status.body['data']['recipients'].map { |d| d['number'] }
  end

  context 'to' do
    it 'accepts multiple recipients' do
      numbers = %w(19046543026)
      recipients = send_fax(numbers)
      recipients.should match_array(numbers)
    end

    it 'accepts a single recipient' do
      numbers = %w(19046543026 19046543027 19046543028)
      recipients = send_fax(numbers)
      recipients.should match_array(numbers)
    end
  end
end
