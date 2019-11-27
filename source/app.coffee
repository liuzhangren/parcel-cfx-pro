import Pages from './pages'
import Layout from './Layout'
import React from 'react'
import ReactDOM from 'react-dom'
import 'antd/dist/antd.css'
import { createBrowserHistory } from 'history'
import {
  Router
  Switch
  Route
  Link
  Redirect
} from "react-router"

history = createBrowserHistory()
{ HomePage, AboutPage, UsersTomPage, UsersBillPage, UsersAlexPage, LoginPage} = Pages

export default App = () =>
  if history.location.pathname is '/login'
    return <LoginPage history= {history} />
  else
    return <Layout history={history} content={
      <Router history={history}>
        <div>
          <Switch>
            <Route path="/about">
              <AboutPage />
            </Route>
            <Route exact path="/">
              <HomePage />
            </Route>
            <Route path="/users/tom">
              <UsersTomPage />
            </Route>
            <Route path="/users/bill">
              <UsersBillPage />
            </Route>
            <Route path="/users/alex">
              <UsersAlexPage/>
            </Route>
          </Switch>
        </div>
      </Router>
    } />
      
  


ReactDOM.render <App />, document.getElementById "app"