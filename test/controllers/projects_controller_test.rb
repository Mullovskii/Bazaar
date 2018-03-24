require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { bitcointalk: @project.bitcointalk, comptetitors: @project.comptetitors, cons: @project.cons, description: @project.description, git: @project.git, hype_summary: @project.hype_summary, ico_bench: @project.ico_bench, ico_check: @project.ico_check, ico_drops: @project.ico_drops, ico_rating: @project.ico_rating, ico_tracker: @project.ico_tracker, medium: @project.medium, name: @project.name, product: @project.product, product_schedule: @project.product_schedule, product_status: @project.product_status, pros: @project.pros, reddit: @project.reddit, slack: @project.slack, status: @project.status, summary: @project.summary, team_ativity: @project.team_ativity, team_description: @project.team_description, telegram: @project.telegram, token_use: @project.token_use, tokenomics: @project.tokenomics, top_7_ico: @project.top_7_ico, twitter: @project.twitter, very_high_ico: @project.very_high_ico, website: @project.website, white_paper: @project.white_paper } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { bitcointalk: @project.bitcointalk, comptetitors: @project.comptetitors, cons: @project.cons, description: @project.description, git: @project.git, hype_summary: @project.hype_summary, ico_bench: @project.ico_bench, ico_check: @project.ico_check, ico_drops: @project.ico_drops, ico_rating: @project.ico_rating, ico_tracker: @project.ico_tracker, medium: @project.medium, name: @project.name, product: @project.product, product_schedule: @project.product_schedule, product_status: @project.product_status, pros: @project.pros, reddit: @project.reddit, slack: @project.slack, status: @project.status, summary: @project.summary, team_ativity: @project.team_ativity, team_description: @project.team_description, telegram: @project.telegram, token_use: @project.token_use, tokenomics: @project.tokenomics, top_7_ico: @project.top_7_ico, twitter: @project.twitter, very_high_ico: @project.very_high_ico, website: @project.website, white_paper: @project.white_paper } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
