require 'test_helper'

class RouteTest < ActionDispatch::IntegrationTest
  test 'should route to users' do
    # GET methods
    assert_routing({path: '/users', method: :get}, {controller: 'users', action: 'index'})
    assert_routing({path: '/users/12', method: :get}, {controller: 'users', action: 'show', id: '12'})

    # POST methods
    assert_routing({path: '/users', method: :post}, {controller: 'users', action: 'create'})

    # PUT methods
    assert_routing({path: '/users/1337', method: :put}, {controller: 'users', action: 'update', id: '1337'})

    # DELETE methods
    assert_routing({path: '/users/1338', method: :delete}, {controller: 'users', action: 'destroy', id: '1338'})
  end

  test 'should route to lists' do
    # GET methods
    assert_routing({path: '/users/12/lists', method: :get}, {controller: 'lists', action: 'index', user_id: '12'})
    assert_routing({path: '/users/11/lists/14', method: :get}, {controller: 'lists', action: 'show', user_id: '11', id: '14'})

    # POST methods
    assert_routing({path: '/users/13/lists', method: :post}, {controller: 'lists', action: 'create', user_id: '13'})

    # PUT methods
    assert_routing({path: '/users/14/lists/15', method: :put}, {controller: 'lists', action: 'update', user_id: '14', id: '15'})

    # DELETE methods
    assert_routing({path: '/users/14/lists/15', method: :delete}, {controller: 'lists', action: 'destroy', user_id: '14', id: '15'})
  end

  test 'should route to things' do
    # GET methods
    assert_routing({path: '/users/12/lists/14/things', method: :get}, {controller: 'things', action: 'index', user_id: '12', list_id: '14'})
    assert_routing({path: '/users/12/lists/14/things/15', method: :get}, {controller: 'things', action: 'show', user_id: '12', list_id: '14', id: '15'})
    
    # POST methods
    assert_routing({path: '/users/12/lists/14/things', method: :post}, {controller: 'things', action: 'create', user_id: '12', list_id: '14'})
    
    # PUT methods
    assert_routing({path: '/users/12/lists/14/things/15', method: :put}, {controller: 'things', action: 'update', user_id: '12', list_id: '14', id: '15'})
    
    # DELETE methods
    assert_routing({path: '/users/12/lists/14/things/15', method: :delete}, {controller: 'things', action: 'destroy', user_id: '12', list_id: '14', id: '15'})
  end
end
