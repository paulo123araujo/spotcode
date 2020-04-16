import React from 'react';
import { Switch, Route } from 'react-router-dom';

import HomeScreen from './screens/home';
import DiscoveryScreen from './screens/discovery';
import SearchScreen from './screens/search';
import FavoriteScreen from './screens/favorites';
import AlbumScreen from './screens/album';

const Routes = () => {
  return (
    <Switch>
      <Route exact path='/' component={HomeScreen} />
      <Route exact path='/discovery' component={DiscoveryScreen} />
      <Route exact path='/search' component={SearchScreen} />
      <Route exact path='/favorites' component={FavoriteScreen} />
      <Route exact path='/album/:id' component={AlbumScreen} />
    </Switch>
  )
}

export default Routes;
