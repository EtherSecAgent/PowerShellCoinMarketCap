Set-Variable -Name cmc -Value 'https://api.coinmarketcap.com/v1/ticker/'$coin''

  cls
  echo "---------------------------------------------------------"  
  echo " PowerShell CoinMarketCap by EtherSecAgent"
  echo "---------------------------------------------------------"
  $coin = Read-Host -Prompt 'Enter Coin Name'
  Set-Variable -Name cmc -Value https://api.coinmarketcap.com/v1/ticker/$coin
  $search = Invoke-WebRequest -Uri $cmc
  cls
   echo "---------------------------------------------------------"
  Write-Host -ForegroundColor cyan "Name" ; $data = convertfrom-json $search.Content ; $data.name 
  Write-Host -ForegroundColor cyan "Symbol" ; $data = convertfrom-json $search.Content ; $data.symbol 
  Write-Host -ForegroundColor cyan "Rank" ; $data = convertfrom-json $search.Content ; $data.rank
  Write-Host -ForegroundColor cyan "USD Price" ; $data = convertfrom-json $search.Content ; $data.price_usd
  Write-Host -ForegroundColor cyan "BTC Price" ; $data = convertfrom-json $search.Content ; $data.price_btc 
  Write-Host -ForegroundColor cyan "Market Cap USD" ; $data = convertfrom-json $search.Content ; $data.market_cap_usd
  Write-Host -ForegroundColor cyan "Available Supply" ; $data = convertfrom-json $search.Content ; $data.available_supply
  Write-Host -ForegroundColor cyan "Total Supply" ; $data = convertfrom-json $search.Content ; $data.total_supply
  Write-Host -ForegroundColor cyan "Max Supply" ; $data = convertfrom-json $search.Content ; $data.max_supply
  Write-Host -ForegroundColor cyan "% Change 1H" ; $data = convertfrom-json $search.Content ; $data.percent_change_1h
  Write-Host -ForegroundColor cyan "% Change 24H" ; $data = convertfrom-json $search.Content ; $data.percent_change_24h
  Write-Host -ForegroundColor cyan "% Change 7D" ; $data = convertfrom-json $search.Content ; $data.percent_change_7d
   echo "---------------------------------------------------------"
  
 