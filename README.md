# Tourism-In-Middle-Earth

This project offers tour packages to the user taking into account their preferences, budget and time available. An itinerary is then created with the options of the user's choice.

## Contents
  1. The system reads the input files:
      - Users with their preferences
      - Attractions with their characteristics
      - Promotions to offer
  2. For each user, the system
      - Suggests an attraction that fits their preferences, costs and schedules. Taking into account the following:
          - Prioritizes the offer of promotions, the most expensive attractions, and the most time-consuming attractions, in that order.
          - Does not offer an attraction or promotion that you cannot afford or for which you do not have time available.
          - Nor does it offer an attraction included in a promotion previously purchased by the same user.
          - Once the offers that match the user's interests are exhausted, offers that do not match are offered, under the same criteria.
      - What the user accepts/purchases are saved in his/her itinerary. An accepted attraction or promotion cannot be canceled.
      - According to the remaining offers, the process is repeated until there is no more time, coins or space available in the attractions.
      - A summary of your entire itinerary is saved, with the hours needed to complete it and the coins to be spent.
      - This is repeated for the next user.
      - The interaction is done through the command line.
  3. An output file is obtained for each user, with the user's data, his purchase, the totals to be paid, and the time needed to complete his itinerary.


