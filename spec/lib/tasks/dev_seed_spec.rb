require 'rails_helper'

describe 'rake db:dev_seed' do
  let :run_rake_task do
    Rails.application.load_tasks
    Rake.application.invoke_task('db:dev_seed[avoid_log]')
  end

  it 'seeds the database without errors' do
    expect { run_rake_task }.not_to raise_error
  end
end
