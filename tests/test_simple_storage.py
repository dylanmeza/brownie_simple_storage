from brownie import SimpleStorage, accounts


def test_deploy():
    # Arrange
    account = accounts[0]
    # Act
    simple_storage = SimpleStorage.deploy({"from": account})
    starting_value = simple_storage.retrieve()
    expected = 0
    # Assert
    assert starting_value == expected


def test_updating_storage():

    # 1. Arrange
    account = accounts[0]
    simple_storage = SimpleStorage.deploy({"from": account})
    # ^ in arrange as it is not the test we are running (update)
    # 2. Act
    expected = 15
    simple_storage.store(expected, {"from": account})
    # 3. Assert
    assert expected == simple_storage.retrieve()
