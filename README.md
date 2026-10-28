# TACT Parking

A parking reservation web app. Users log in, pick a lot using a lot map, see open spots, and reserve one.

> Built by hand in 2019, before AI coding tools. Left as originally written, except that the old database credentials were replaced with placeholders (that Azure database no longer exists).

## Features

- Login and logout
- Lot selection from dropdowns, next to a lot map
- Open spots listed in a grid pulled from the database
- One-click reserve, then a confirmation page

## Tech

- **C#** on **ASP.NET** (.NET Framework 4.8), mixing Web Forms (`.aspx`) and MVC (`Controllers/`, `Views/`)
- **Azure SQL Database** via `System.Data.SqlClient`
- **Bootstrap** and jQuery on the front end
- **Docker**, using a Windows Server Core ASP.NET image

## Project layout

```
WebForm1.aspx / WebForm2.aspx   login and lot / spot selection
SpotUtilit.aspx                 spot utilities
ConfirmReservation.aspx         reservation confirmation
Logout.aspx
Controllers/, Views/            MVC pages
Dockerfile                      container build
```

## Running it

1. Open `TactParking3.0.sln` in Visual Studio (Windows).
2. In `Web.config`, set `TactParkingDbConnectionString` to your own SQL Server database.
3. Run with IIS Express, or build the Docker image (needs Windows containers).

## Branches

Work was done on feature branches (`login-page`, `Mapselectionpage`, `bugfix`) and merged into `master`, which has the final version.
