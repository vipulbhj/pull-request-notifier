# Sms Notifier
> Notify when someone submits a pull request on one of your specified branches.

## Parameters
Make sure that these parameters are required as [Github Secrets](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets)
| Parameter | Type | Description |
|-----------|------|-------------|
| `MOBILE_NO` | `string` | Your mobile no(use country code) |
| `AWS_KEY_ID` | `string` | Your aws key id |
| `AWS_KEY_ACCESS` | `string` | Your aws access key |


## Usage

```yaml
name: Notify when a pull request in made to master branch
on:  
  pull_request:
    branches:
      - master
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Notify when someone creates a pull request on mentioned branches
        id: notify-on-pr
        uses: ./
        with:
          mobile_no: ${{ secrets.MOBILE_NO }}
          aws_key_id: ${{ secrets.AWS_KEY_ID }}
          aws_key_access: ${{ secrets.AWS_KEY_ACCESS }}
      - name: Run
        run: echo 'Sending you notification'
```
