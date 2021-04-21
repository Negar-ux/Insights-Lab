module InterviewsHelper
  def project_select_options
    Project.all.map {|p| [p.name, p.id, ]}
  end
end
