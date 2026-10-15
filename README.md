# 340-Assignment3

# Stardew Valley Character API

An API for tracking characters from video game Stardew Valley, built with Spring Boot using a layered architecture. Database is stored in Neon.

## Data Model
**Stardew Character** (table `characters`)

| Field | Type | Rules |
|-------|------|-------|
| `id` | Long | Generated automatically |
| `name` | String | Required, not blank |
| `description` | String | Required, not blank |
| `mapLocation` | Enum: `MOUNTAINS`, `BEACH`, `PELICAN_TOWN`, `CINDERSAP_FOREST`, `CALICO_DESERT`, `GINGER_ISLAND` | Required |
| `marriageCandidate` | boolean | Defaults to false |

## API Reference

Base path: `/api/characters`

| Method | Path | Description | Success |
|--------|------|-------------|---------|
| GET | `/api/characters` | List all characters (supports filters below) | 200 |
| GET | `/api/characters/{id}` | Get one character | 200 |
| POST | `/api/characters` | Create a character | 201 |
| PUT | `/api/characters/{id}` | Replace a character's fields | 200 |
| DELETE | `/api/characters/{id}` | Delete a character | 204 |


### Query parameters for `GET /api/characters`

| Parameter | Example | Behavior |
|-----------|---------|----------|
| `name` | `?name=wi` | Partial, case-insensitive match ("wi" finds "Willy" and "Wizard") |
| `mapLocation` | `?mapLocation=BEACH` | Exact match on `MOUNTAINS`, `BEACH`, `PELICAN_TOWN`, `CINDERSAP_FOREST`, `CALICO_DESERT`, or `GINGER_ISLAND` |
| both | `?name=wi&mapLocation=BEACH` | Both filters must match |

Blank or missing parameters are ignored.


```http
POST /api/characters
Content-Type: application/json

{
  "name": "Maru",
  "description" : "Aspiring inventor, living with her parents Robin and Demetrius",
  "mapLocation": "MOUNTAINS",
  "marriageCandidate": true
}
```

```http
PUT /api/characters/{1}
Content-Type: application/json

{
  "name": "Clint",
  "description" : "Town's blacksmith",
  "mapLocation": "PELICAN_TOWN",
  "marriageCandidate": true
}
```

##Render Deployment
https://three40-assignment3.onrender.com/ 

Note: Render free services sleep after roughly 15 minutes of inactivity, so the first request afterward can take up to a minute.
