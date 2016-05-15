let(:author) { FactoryGirl.create(:user) }
let(:project) { FactoryGirl.create(:project) }
let(:ticket) do
FactoryGirl.create(:ticket, project: project, author: author)
end