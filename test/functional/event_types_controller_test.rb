require 'test_helper'

class EventTypesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => EventType.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    EventType.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    EventType.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to event_type_url(assigns(:event_type))
  end
  
  def test_edit
    get :edit, :id => EventType.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    EventType.any_instance.stubs(:valid?).returns(false)
    put :update, :id => EventType.first
    assert_template 'edit'
  end
  
  def test_update_valid
    EventType.any_instance.stubs(:valid?).returns(true)
    put :update, :id => EventType.first
    assert_redirected_to event_type_url(assigns(:event_type))
  end
  
  def test_destroy
    event_type = EventType.first
    delete :destroy, :id => event_type
    assert_redirected_to event_types_url
    assert !EventType.exists?(event_type.id)
  end
end
