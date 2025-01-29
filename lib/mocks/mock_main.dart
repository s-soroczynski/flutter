const mockMainData = {
  "data": {
    "selectedItems": ["send_the_users_selected_rewards_here"],
    "metadata": {
      "pointsBalance": 10,
      "redeemableItems": [
        {
          "item": {
            "itemId": "3_free_shipments",
            "type": "FREE_SHIPMENTS",
            "price": 25,
            "market": "olxpl",
            "freeShipments": {"number": 3, "expirationPeriod": "PT168H"},
            "serviceFeeFixedDiscounts": {
              "amount": 200,
              "currency": "PLN",
              "number": 1,
              "expirationPeriod": "PT168H"
            },
            "isPromo": false,
            "isNew": true
          },
          "isRedeemable": true,
          "pointsLeftToRedeem": 10,
          "pointsLeftAfterRedeem": 0
        }
      ],
      "pointsPreview": {
        "pointsFromTransaction": 10,
        "isMonthlyCapReached": false,
        "pointsMonthlyCapAmount": 100,
        "variant": {
          "id": "D",
          "tcLink": "http://also-general-tc-legacy-stuff",
          "generalTcLink": "http://general-tc",
          "minimumTransactionValue": 1,
          "minimumPointsPerValidTransaction": 50,
          "maximumPointsPerValidTransaction": 100
        }
      },
      "helpCenterLink": "http://help-center"
    }
  }
};
