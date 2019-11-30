.items-container__lower-part__itembox-image
  = link_to image_tag(item.images.slice(0), size: "215x250"), item_path(item.id)
  -if item.buyer_id.present? 
    .items-box_photo__sold
      .items-box_photo__sold__inner
        SOLD
  = link_to(item_path(item.id), class: 'links') do
    .items-container__lower-part__itembox-image-title
      = item.name
      .items-container__lower-part__itembox-price
        %p
          ¥
          = item.price
