var AboutPage, App, HomePage;

import Pages from './pages';

import Layout from './Layout';

import React from 'react';

import ReactDOM from 'react-dom';

import 'antd/dist/antd.css';

import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link
} from "react-router-dom";

({HomePage, AboutPage} = Pages);

export default App = () => {
  return <Layout content={<Router>
      <div>
        <Switch>
          <Route path="/about">
            <AboutPage />
          </Route>
          <Route path="/">
            <HomePage />
          </Route>
        </Switch>
      </div>
    </Router>} />;
};

ReactDOM.render(<App />, document.getElementById("app"));
