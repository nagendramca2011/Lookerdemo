- connection: look

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: camp_hdr
  joins: 
    - join: campaign_summary
      type: inner
      relationship: one_to_one
      sql_on: campaign_summary.campaign_id=camp_hdr.campaign_id
    
    - join: lead_hdr
      type: inner
      relationship: one_to_one
      sql_on: camp_hdr.campaign_id=lead_hdr.campaignid
      
    - join: opty_hdr1
      type: inner
      relationship: one_to_one
      sql_on: camp_hdr.campaign_id=opty_hdr1.camp_id  
      
    - join: pipeline
      type: left_outer
      relationship: one_to_one
      sql_on: camp_hdr.campaign_id=pipeline.campid
    
    - join: order_summary
      type: inner
      relationship: one_to_one
      sql_on: camp_hdr.campaign_id=order_summary.camp_id
      
      
      
      
      
- explore: order_summary
      
    
- explore: pipeline

- explore: opty_hdr1

- explore: campaign_details

- explore: campaign_details_bkp

- explore: campaign_summary

- explore: contact_details

- explore: lead_details

- explore: lead_details11

- explore: lead_details_bkp

- explore: opportunity_details

- explore: opportunity_details123

- explore: us_states




