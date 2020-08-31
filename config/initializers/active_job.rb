class ActiveJob::Base
  class << self
    def execute(job_data)
      Apartment::Tenant.switch(job_data['tenant']) do
        super
      end
    end
  end

  def serialize
    super.merge('tenant' => Apartment::Tenant.current)
  end
end