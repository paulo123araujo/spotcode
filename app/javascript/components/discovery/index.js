import React, { Fragment, useState, useEffect } from 'react';
import Album from '../common/album';
import styled from 'styled-components';
import { Columns, Heading } from 'react-bulma-components';

import AlbumsService from '../../services/albums';

const DivSpaced = styled.div`
  margin-top: 50px;
`

const Discovery = () => {
  const [recentAlbums, setRecentAlbums] = useState([]);
  const [recommendAlbums, setRecommendAlbums] = useState([]);

  async function fetchAlbums() {
    const response = await AlbumsService.index();
    setRecentAlbums(response.data.recent_albums)
    setRecommendAlbums(response.data.recommend_albums)
  }

  useEffect(() => {
    fetchAlbums();
  }, [])

  const recent_albums_components = recentAlbums.map((album, key) =>
    <Columns.Column desktop={{ size: 3 }} mobile={{ size: 6 }} key={key}>
      <Album artist_name={album.artist_name} title={album.title} cover_url={album.cover_url} id={key}/>
    </Columns.Column>
  );

  const recommend_albums_components = recommendAlbums.map((album, key) =>
    <Columns.Column desktop={{ size: 3 }} mobile={{ size: 6 }} key={key}>
      <Album artist_name={album.artist_name} title={album.title} cover_url={album.cover_url} id={key}/>
    </Columns.Column>
  );

  return (
    <Fragment>
      {recent_albums_components.length > 0 &&
        <div>
          <Heading className="has-text-white" size={4}>
            Tocadas recentemente
          </Heading>
          <Columns className="is-mobile">
            {recent_albums_components}
          </Columns>
        </div>
      }

      {recommend_albums_components.length > 0 &&
        <DivSpaced>
          <Heading className="has-text-white" size={4}>
            Recomendadas
          </Heading>
          <Columns className="is-mobile">
            {recommend_albums_components}
          </Columns>
        </DivSpaced>
      }
    </Fragment>
  )
}

export default Discovery;
