require_relative '../cm_challenge/api'

RSpec.describe CmChallenge::Api do
  describe '#members' do
    let(:members) { CmChallenge::Api.members }

    it { expect(members).to respond_to(:each) }
    it { expect(members.length).to satisfy { |v| v >= 1 }  }
    it { expect(members).to all(have_key(:id)) }
    it { expect(members).to all(have_key(:name)) }
    it { expect(members).to all(have_key(:user_id)) }
  end

  describe '#absences' do
    let(:absences) { CmChallenge::Api.absences }

    it { expect(absences).to respond_to(:each) }
    it { expect(absences.length).to satisfy { |v| v >= 1 }  }
    it { expect(absences).to all(have_key(:id)) }
    it { expect(absences).to all(have_key(:start_date)) }
    it { expect(absences).to all(have_key(:end_date)) }
    it { expect(absences).to all(have_key(:user_id)) }
    it { expect(absences).to all(have_key(:crew_id)) }
  end
end
