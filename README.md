Sustainable Development Goals Quiz URL https://sdgs.workwithgenai.com/

Sign up and login, complete quizes about Sustainable Development Goals!

Total 17 NFTs to achieve!

## Deployed canisters

*Frontend canister via browser*

This stores the NFT images: https://dsxli-uyaaa-aaaai-qpe6q-cai.icp0.io/

*Backend canister via Candid interface:*

dip721_nft_container: https://a4gq6-oaaaa-aaaab-qaa4q-cai.raw.icp0.io/?id=dar4r-yiaaa-aaaai-qpe5q-cai

minter: https://a4gq6-oaaaa-aaaab-qaa4q-cai.raw.icp0.io/?id=dvwn4-zaaaa-aaaai-qpe6a-cai

### dfx deploy

default principal

maxLimit = 10000
data = 
logo_type = image/png
name = SDGs NFT
symbol = SDGS

### nft asset path

Frontend canister path/1.png , 2.png, till 17.png
Change the path in minter/main.mo after first deployment.

### mint from dip721

dfx canister call dip721_nft_container mintDip721 "(
  principal\"$(dfx identity get-principal)\", 
  vec { 
    record {
      purpose = variant{Rendered};
      data = blob\"SDGs\";
      key_val_data = vec {
        record { key = \"uri\"; val = variant{TextContent=\"http://bw4dl-smaaa-aaaaa-qaacq-cai.localhost:4943/4.png\"}; };
      }
    }
  }
)"

### mint from minter

dfx canister --network ic call minter mintNFT "(
    record {
        _to = \"4zxeg-h2yop-fhmve-ehfj7-ibqt2-lssby-mwn3y-l2xxu-gsnq6-lxb5q-jae\";
        _number = \"1\"
    }
)"
